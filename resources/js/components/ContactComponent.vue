<template>
    <section class="page-section bg-blue1" id="contact">
        <div class="container-fluid">

            <div class="container text-center">

                <div class="row">
                    <div class="col-lg-3 mx-auto"></div>
                    <div class="col-lg-6 mx-auto">
                        <h2 id="contact_me" @click="showContact()" class="page-section-heading text-center text-white text-head text-uppercase mb-0">
                            {{ mail.contact_button_text }}
                        </h2>
                    </div>
                    <div class="col-lg-3 mx-auto"></div>
                </div>
            </div>






<!--            <div id="spin" class="text-center">-->
<!--                <b-spinner label="Spinning"></b-spinner>-->
<!--                <b-spinner type="grow" label="Spinning"></b-spinner>-->
<!--                <b-spinner variant="primary" label="Spinning"></b-spinner>-->
<!--                <b-spinner variant="primary" type="grow" label="Spinning"></b-spinner>-->
<!--                <b-spinner variant="success" label="Spinning"></b-spinner>-->
<!--                <b-spinner variant="success" type="grow" label="Spinning"></b-spinner>-->
<!--            </div>-->








            <transition name="fade">

                <div v-if="mail.contact" class="row">
                    <div class="col-lg-8 mx-auto">
                        <br>

                        <form class="send-form" role="form" onsubmit="return false;">
                            <div class="form-group">
                                <input v-model="mail.email"  type="email" class="form-control" placeholder="Input your email">
                            </div>
                            <div class="form-group">
                                <input v-model="mail.message" type="text" class="form-control" placeholder="Input your message">
                            </div>

                            <div id="loading" v-if="mail.sending">
                                <div class="text-center">
                                    <b-spinner variant="light" label="Spinning"></b-spinner>
                                </div>
                            </div>

                            <div v-if="mail.contact_message" id="error-message">{{mail.contact_message}}</div>

                            <transition name="fade">
                                <div v-if="mail.contact_status" id="message_sent" class="sent-message">Your message has been sent. Thank you!</div>
                            </transition>

                            <div class="text-center form-send">
                                <button @click="sendMsg()" id="send" type="submit" class="btn bg-white">Send message</button>
                            </div>
                        </form>

                    </div>
                </div>

            </transition>
        </div>
    </section>
</template>

<script>

    import 'bootstrap/dist/css/bootstrap.css'
    import 'bootstrap-vue/dist/bootstrap-vue.css'

    export default {
        name: "ContactComponent",
        props: {
            sub: String,
        },
        data: function(){
            return {
                mail: {
                    email: '',
                    message: '',
                    url: this.sub + '/contact',
                    contact_status: false,
                    contact_message: false,
                    contact: false,
                    contact_button_text: 'CONTACT ME',
                    sending: false
                }
            }
        },
        methods: {
            sendMsg(){
                this.mail.sending = true;
                axios.post(this.mail.url,{
                    'email': this.mail.email,
                    'message': this.mail.message
                }).then((response) => {
                    if (response.data.contact_status){

                        this.mail.contact_status = response.data.contact_status;

                        setTimeout( () => {
                            this.mail.contact_status = false;
                        }, 5000);

                    } else {
                        this.mail.contact_message = Object.values(response.data.contact_message)[0][0];
                    }
                })
                .catch((error) => {
                    console.log(error);
                }).finally(() => {
                    this.mail.sending = false;
                });
            },
            showContact(){
                this.mail.contact = !this.mail.contact;
                this.mail.contact_button_text = this.mail.contact ? 'CLOSE FORM' : 'CONTACT ME';
            }
        },
    }
</script>

<style lang="scss" scoped>

    @import "../../sass/_variables.scss";

    .fade-enter-active, .fade-leave-active {
        transition: opacity .9s;
    }
    .fade-enter, .fade-leave-to /* .fade-leave-active до версии 2.1.8 */ {
        opacity: 0;
    }

    #contact_me {
        border: solid 1px white;
        border-radius: 0.5rem;
        padding: 20px 0;

        &:hover {
            /*color: #3490dc!important;*/
            color: $m-blue!important;
            background-color: $m-l-grey;
        }
    }

    .form-control:focus {
        color: $m-blue;
        background-color: #fff;
        border-color: #6bebd1;
        outline: 0;
        box-shadow: 0 0 0 0.5rem rgba(26, 188, 156, 0.25);
    }

</style>
