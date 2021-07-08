---
to: src/components/<%= folder %>/<%= name %>.vue
---
<template>
    <div class="<%= name.toLowerCase() %>">
        <h1>My new Vue Component with the name <%= name %></h1>
    </div>
</template>

<script>
<% if(axios){ -%>
    import axios from 'axios'
<% } -%>

    export default {
        name: "<%= name %>",

        props: {
            msg: {
                type: String,
                required: false,
                default: '',
            }
        },

        data() {
            return {}
        },

        computed: {},

        methods: {
            <%_ if(axios){ -%>
            async fetchData() {
                try {
                    return await axios
                        .get('https://api.endpoint.com')
                        .then(function (response) {
                            console.log(response)
                        })
                        .catch(function (error) {
                            throw new Error(error)
                        })
                } catch (error) {
                    throw new Error(error)
                }
            }
            <%_ } -%>
        }
    }
</script>

<style lang="scss"
       scoped
       src="./<%= name %>.scss">
</style>
```
