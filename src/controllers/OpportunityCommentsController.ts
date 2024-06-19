import { BaseController } from '../utils/BaseController';
import { parseParams } from '../utils/parseParams';
//import API from '../json/fhcrm.json';
import axios from 'axios';
export class OpportunityCommentsController extends BaseController {

  async createOpportunityComments(data:any) {
      let responseData="";
       await axios({
            baseURL:this.baseURL(),
            method:'post',
            url:'/OpportunityComments/createOpportunityComments',
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

  async removeOpportunityComments(Ids: string[]) {
    const numbers = Ids;
    const listItems = numbers.map((id) => {
      return fetch(this.baseURL()+'/OpportunityComments/removeOpportunityComments/'+id).then(res => res.json())
      .then(d => d);
    });
    ///this.success();
  }


  async getOpportunityCommentsById(Id:string) {
    return fetch(this.baseURL()+'/OpportunityComments/getOpportunityCommentsById/'+Id).then(res => res.json())
            .then(d => d);

  }

  async getOpportunityCommentsAll(fhevent:any) {
    const fhurl=parseParams.setparseParams({
      'pageIndex':fhevent.page+1,
      'recordIndex':fhevent.first,
      'pageSize':fhevent.rows,
      'search':fhevent.search,
      'sort':fhevent.sort,
      'mid':fhevent.mid,
  })
    return fetch(this.baseURL()+'/OpportunityComments/getOpportunityCommentsAll?'+fhurl).then(res => res.json())
            .then(d => d);

  }


  async getOpportunityCommentsAllView() {

    return fetch(this.baseURL()+'/OpportunityComments/getOpportunityCommentsAllViewOK').then(res => res.json())
            .then(d => d);
  }

  async updateOpportunityCommentsv2(data:any,Id:string,userToken:string) {
    //API.fhcrm.OpportunityComments.updateaOpportunityComments
    let responseData="";
    await axios({
         baseURL:this.baseURL(),
         method:'put',
         url:'/OpportunityComments/updateOpportunityComments/'+Id,
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
