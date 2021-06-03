<template>
    <div class="container">
        <button type="submit" class ="refreshbtn">
            <img class="refreshimg" src="../assets/refresh.png"/>
        </button>
        <img class = box src="../assets/doge.png" />
        <img class = userinput src="../assets/bar.png"/>
        <button type = "button" class = "overlayingbutn">Mint</button> 
    </div>
        
</template>

<script>
</script>


<style scoped>
    .refreshbtn{
        position: absolute;
        background-position: center center;
        left:62%;
        top: 1%;
        border-radius: 50%;
        border-style: solid;
        border-color: black;
        cursor: pointer;
        background-color: #FFDE59;
    }
    .refreshbtn:hover{
        background-color: #ad9639;
    }
    .refreshimg{
        
    }
    .container {
    position: relative;
    }
    .box{
        display: block;
        margin-left: auto;
        margin-right: auto;
        width: 40%;
        height: 40%;
        border-style: solid;
    }
    .overlayingbutn{
        position: absolute;
        top: 93%;
        left: 50%;
        transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        background-color: #FFDE59;
        color: black;
        font-size: 16px;
        padding: 1% 2%;
        border: none;
        cursor: pointer;
        border-radius: 5px;
    }
    .overlayingbutn:hover{
        background-color: #ad9639;
    }
    .userinput{
        display: block;
        border-style: none solid solid solid;
        width: 40%;
        margin-left: auto;
        margin-right: auto;
    }
</style>