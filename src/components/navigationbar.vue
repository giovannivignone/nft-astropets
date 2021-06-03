<template>

        <header>
            <img class = "logo" src= "../assets/logo.png" alt = "logo">
            <nav>
                <ul class = "nav_links">
                    <div class="topnav">
                        <input type="text" placeholder="Search.." class="round">
                    </div>
                </ul>
            </nav>
            <a class ="cta" href="#"><ButtonMeta></ButtonMeta></a>
        </header>

</template>

<script>
import ButtonMeta from './ConnectMeta'
export default {
    components: {
        ButtonMeta,
    }
}
</script>

<style scoped>
    input{
        background-color: rgb(255, 255, 189);
    }
    .round{
        width: 100%;
        border-radius: 15px;
        border: 1px #000 solid;
        padding: 5px 5px 5px 25px;
        position: relative;
        border-radius: 50px;
        padding: 9px 25px;
    }
    img{
        height: 50px;
        width: auto;
        border-radius: 50px;
        padding: 9px 25px;
    }
    *{
        box-sizing: border-box;
        margin: 0;
        padding:0;
        background-color: #000000;
    }
    li, a, button{
        font-family: "Montserrat", sans-serif;
        font-weight: 500;
        font-size: 16px;
        color: #000000;
        text-decoration: none;
    }
    header{
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding-right: 1%;
        padding-top: 0.25%;
        padding-bottom: 0.25%;
    }


    .nav_links{
        list-style: none;

    }
    .nav_links li{
        display: inline-block;
        padding: 0px 20px;
    }
     .nav_links li:nth-child(1){
        padding: 0px 20px 0 0;
    }
    .nav_links li a{
        transition: all 0.3s ease 0s;
    }
    .nav_links li a:hover{
        color: #1f9ec5;
    }
</style>