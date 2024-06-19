import { BaseController } from '../utils/BaseController';
// import API from '../json/fhcrm.json';
import axios from 'axios';
export class StoragelocationController extends BaseController {

  async createStoragelocation(data) {
      let responseData="";
       await axios({
            baseURL:this.baseURL(),
            method:'post',
            url:'/storagelocation/createStoragelocation',
            headers:{'content-type':'application/json'},
            data : data
          }).then(function (response) {
              console.log('response:'+JSON.stringify(response.data));
              responseData=JSON.stringify(response.data);
            })
            .catch(function (error) {
              responseData="no";
            });
            return {fhok:responseData};
    }

  async removeStoragelocation(Ids: string[]) {
    const numbers = Ids;
    const listItems = numbers.map((id) => {
      return fetch(this.baseURL()+'/storagelocation/removeStoragelocation/'+id).then(res => res.json())
      .then(d => d);
    });
    ///this.success();
  }


  async getStoragelocationById(Id:string) {
    return fetch(this.baseURL()+'/storagelocation/getStoragelocationById/'+Id).then(res => res.json())
            .then(d => d);

  }

  async getStoragelocationAll(fhevent) {
    return fetch(this.baseURL()+'/storagelocation/getStoragelocationAll').then(res => res.json())
            .then(d => d);

  }
   async getStoragelocationAll_count(fhevent) {
    return {"fhok":10}

  }



  async getStoragelocationAllView() {

    return fetch(this.baseURL()+'/storagelocation/getStoragelocationAllViewOK').then(res => res.json())
            .then(d => d);
  }

  async updateStoragelocationv2(data:any,Id:string,userToken:string) {
//     API.fhcrm.Storagelocation.updateaStoragelocation
    let responseData="";
    await axios({
         baseURL:this.baseURL(),
         method:'put',
         url:'/storagelocation/updateStoragelocation/'+Id,
         headers:{'content-type':'application/json','userToken':userToken},
         data : data
       }).then(function (response) {
           console.log('response:'+JSON.stringify(response.data));
           responseData=JSON.stringify(response.data);
         })
         .catch(function (error) {
           responseData="no";
         });
         return {fhok:responseData};
  }
}
