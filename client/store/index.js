import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

const createStore = () => {
  return new Vuex.Store({
    state: {
      connect: false,
      message: null
    },
    mutations: {
      SOCKET_CONNECT: (state, status) => {
        console.log("CONNECTED!");
        state.connect = true;
      },
      SOCKET_USER_MESSAGE: (state, message) => {
        console.log("MESSAGE!", message);
        state.message = message;
      }
    },
    actions: {
      otherAction: (context, type) => {
        return true;
      },
      socket_userMessage: (context, message) => {
        context.dispatch('newMessage', message);
        context.commit('NEW_MESSAGE_RECEIVED', message);
        if (message.is_important) {
          context.dispatch('alertImportantMessage', message);
        }
      }
    }
  });
};

export default createStore;