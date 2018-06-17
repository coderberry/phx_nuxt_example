import Vue from 'vue';
import io from 'socket.io-client';
import VueSocketIO from 'vue-socket.io';
import store from '~/store';

export const SocketInstance = io('http://localhost:4000');

SocketInstance.on('connect', onConnect);

function onConnect() {
  console.log('connect ' + socket.id);
}

Vue.use(VueSocketIO, SocketInstance, store);