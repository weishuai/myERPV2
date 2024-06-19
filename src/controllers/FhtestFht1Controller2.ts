import { BaseController } from '../utils/BaseController';

import axios from 'axios';

export class FhtestFht1Controller2 extends BaseController {
  async myconnect() {
  }


  async createFhtestFht1(data) {
      let responseData="";
       await axios({
            baseURL:this.baseOdooURL(),
            method:'post',
            url:'/myapi/model/create',
            headers:{'content-type':'application/x-www-form-urlencoded'},
            data : {
              model:"fhtest.fht1",
              values:JSON.stringify({"fhname":"weishuai"})
            }
          }).then(function (response) {
              //console.log('response:'+JSON.stringify(response.data));
              responseData=JSON.stringify(response.data);
            })
            .catch(function (error) {
              responseData="no";
            });
            return {fhok:responseData};
    }

  async removeFhtestFht1(Ids: string[]) {

    let responseData="";
    await axios({
         baseURL:this.baseOdooURL(),
         method:'post',
         url:'/myapi/model/unlink',
         headers:{'content-type':'application/x-www-form-urlencoded'},
         data :{
            model:"fhtest.fht1",
            domain:'[("id","=",'+Ids+')]',       
         },
       }).then(function (response) {
           console.log('response:'+JSON.stringify(response.data));
           responseData=JSON.stringify(response.data);
         })
         .catch(function (error) {
           responseData="no";
         });
         return {fhok:responseData};

  }


  async getFhtestFht1ById(Id:string) {

    let responseData="";
    await axios({
         baseURL:this.baseOdooURL(),
         method:'post',
         url:'/myapi/model/read_byID',
         headers:{'content-type':'application/x-www-form-urlencoded'},
         data : {
           model: 'fhtest.fht1',
           domain: '[("id","=",'+Id+')]',
         }}).then(function (response) {
           responseData=response.data;
         })
         .catch(function (error) {
           responseData="no";
         });
         return {fhok:responseData};



  }

  async getFhtestFht1All(fhevent:any) {
    const fhParams={
      'pageIndex':fhevent.page+1,
      'recordIndex':fhevent.first,
      'pageSize':fhevent.rows,
      'search':fhevent.search,
      'sort':fhevent.sort,
    }
     let responseData="";
     await axios({
          baseURL:this.baseOdooURL(),
          method:'post',
          url:'/myapi/model/read',
          headers:{'content-type':'application/x-www-form-urlencoded'},
          data : {
            model: 'fhtest.fht1',
            domain: '[]',
            Params:fhParams,
          }}).then(function (response) {
            responseData=response.data;
          })
          .catch(function (error) {
            responseData="no";
          });
          return {fhok:responseData};
  }
  async getFhtestFht1All_count(fhevent:any) {
    const fhParams={
      'pageIndex':fhevent.page+1,
      'recordIndex':fhevent.first,
      'pageSize':fhevent.rows,
      'search':fhevent.search,
      'sort':fhevent.sort,
    }
     let responseData="";
     await axios({
          baseURL:this.baseOdooURL(),
          method:'post',
          url:'/myapi/model/read_count',
          headers:{'content-type':'application/x-www-form-urlencoded'},
          data : {
            model: 'fhtest.fht1',
            domain: '[]',
            Params:fhParams,
          }}).then(function (response) {
            responseData=response.data;
          })
          .catch(function (error) {
            responseData="no";
          });
          return {fhok:responseData};
  }
  async getFhproductAll() {

     let responseData="";
     await axios({
          baseURL:this.baseOdooURL(),
          method:'post',
          url:'/myapi/model/readTOP5',
          headers:{'content-type':'application/x-www-form-urlencoded'},
          data : {
            model: 'product.product',
            domain: '[]',
          }}).then(function (response) {
            responseData=response.data;
          })
          .catch(function (error) {
            responseData="no";
          });
          return {fhok:responseData};
  }

  async getMyproductAll() {
    //domain: '[("id","in",[2])]',
     let responseData="";
     await axios({
          baseURL:this.baseOdooURL(),
          method:'post',
          url:'/myapi/model/product_product',
          headers:{'content-type':'application/x-www-form-urlencoded'},
          data : {
            model: 'product.product',
            domain: '[]',
          }}).then(function (response) {
            responseData=response.data;
          })
          .catch(function (error) {
            responseData="no";
          });
          return {fhok:responseData};
  }

  async getFhtestFht1AllView() {

    return fetch(this.baseURL()+'/fhtestFht1/getFhtestFht1AllViewOK').then(res => res.json())
            .then(d => d);
  }

  async updateFhtestFht1v2(data:any,Id:string,userToken:string) {
    let responseData="";
    await axios({
         baseURL:this.baseOdooURL(),
         method:'post',
         url:'/myapi/model/update',
         headers:{'content-type':'application/x-www-form-urlencoded'},
         data :{
            model:"fhtest.fht1",
            values:JSON.stringify({"fhname":"weishuai999"}),
            domain:'[("id","=",'+Id+')]',       
         },
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
