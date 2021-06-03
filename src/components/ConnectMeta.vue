<template>
    <button v-on:click = "onclick()"> {{value}} </button>
</template>

<script>
import web3 from '/Users/giovannivignone/VS Code Projects/nft-astropets/node_modules/web3'

export default {
    data() {return{
        value: "Connect Metamask"
    }
    },
    methods: {
        async onclick() {
        if (window.ethereum){
                window.web3 = new web3(window.ethereum)
                const accounts = await window.ethereum.request({ method: 'eth_requestAccounts' })
                const account = {accounts}["accounts"][0]
                this.value = account.slice(0,5) + "..." + account.slice(account.length-4,account.length)
                console.log(typeof(account))
                console.log(account)
                const ethNetwork_userid = await window.web3.eth.net.getId()
                console.log("Network Id (likely 5777 for ganache):",ethNetwork_userid)
                
            }
            else{
                window.alert("Please Install Metamask")
            }
      }
     }
}
</script>
<style scoped>
button{
        margin-left: 20px;
        padding: 9px 25px;
        background-color: #FFDE59;
        border: none;
        border-radius: 50px;
        cursor: pointer;
        transition: all 0.3s ease 0s;
    }
button:hover{
        background-color: #fff4c6;
    }
</style>