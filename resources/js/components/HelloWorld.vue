<template>
    <div class="col-12">
        <p>{{ txt }}</p>
    </div>
</template>

<script>
    import Vue from 'vue';
    import VueToast from 'vue-toast-notification';
    import 'vue-toast-notification/dist/theme-sugar.css';

    Vue.use(VueToast);

    export default {
        // Define variable
        data() {
            return {
                txt: 'Base e-commerce project'
            }
        },
        // Init function
        created: function()
        {
            this.openToast('Base e-commerce', 'success', 2000);
        },
        // Define all function here
        methods: {
            openToast (message, type, duration, dismissible) {
                Vue.$toast.open({
                    message: message,
                    type: type,
                    duration: duration,
                    dismissible: dismissible,
                    position: 'top-right'
                });
            },
        },
        // Function mounted
        mounted() {
            console.log("Example component mounted");
        },
        // Define compute here
        computed() {

        }
    }
</script>

<style scoped>
    /**
    * Scope local CSS
    */
</style>
