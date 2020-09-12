<template>

        <header id="main_block"  class="masthead text-white text-center bg-grey1" style="background-image: url('/public/img/code-background.png')">
                <div class="container d-flex align-items-center flex-column">
                    <img v-if="avatar" class="masthead-avatar mb-8" :src="sub + avatar.path" alt="" />
                    <img v-else class="masthead-avatar mb-8" :src="sub + '/public/img/avatars/default.svg'" alt="" />
<!--                    <img class="masthead-avatar mb-8" src="/public/img/avatars/default.svg" alt="" />-->
                </div>

        </header>

</template>

<script>
    export default {
        name: "AvatarComponent",
        props: {
            avatar: Object,
            sub: String,
        },
        data: function(){
            return {

            }
        },
    }
</script>

<style scoped>

</style>
