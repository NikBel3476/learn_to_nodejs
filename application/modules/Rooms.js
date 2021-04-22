const Module = require('./Module');

class Rooms extends Module {
    constructor(options) {
        super(options);
        this.rooms = {};
        this.io.on('connection', socket => {
            socket.on(this.MESSAGES.CREATE_ROOM, roomName => this.createRoom(roomName, socket));
            socket.on(this.MESSAGES.JOIN_ROOM, roomName => this.joinRoom(roomName, socket));
            socket.on(this.MESSAGES.LEAVE_ROOM, roomName => this.leaveRoom(roomName, socket));
            socket.on(this.MESSAGES.GET_ROOMS, () => this.getRooms(socket));
        });

        this.io.of("/").adapter.on('delete-room', room => {
            if(room in this.rooms) {
                delete this.rooms[room];
                this.io.emit(this.MESSAGES.GET_ROOMS, this.rooms);
            }
            console.log(`Room ${room} was deleted`);
        });
    }

    createRoom(room, socket) {
        let data = { result: false };
        if (!(room in this.rooms)) {
            this.rooms[room] = room;
            socket.join(room);
            data = {result: true, room};
            this.io.emit(this.MESSAGES.GET_ROOMS, this.rooms);
        }
        socket.emit(this.MESSAGES.CREATE_ROOM, data);
    }

    joinRoom(room, socket) {
        let data = { result: false };
        if(room in this.rooms) {
            socket.join(room);
            data = {result: true, room};
            this.mediator.call();
        }
        socket.emit(this.MESSAGES.JOIN_ROOM, data);
    }

    leaveRoom(room, socket) {
        let data = { result: false };
        if (room in this.rooms) {
            socket.leave(room);
            data = { result: true};
        }
        socket.emit(this.MESSAGES.LEAVE_ROOM, data);
    }

    getRooms(socket) {
        socket.emit(this.MESSAGES.GET_ROOMS, this.rooms);
    }
    
}

module.exports = Rooms;