import { SearchVo} from '../utils/SearchVo';
export class CampaignVo  {
  id?:string;
  name?:string;
  description?:string;
  starts?:  Date;
  ends?:  Date;
  owner?: number;
  budget?: number;
  status?: any;
  createdAt?:  Date;
  updatedAt?:  Date;
  isactived?: number;
  islocked?: number;
  createUid?: number;
  updatedUid?: number;
}
export class CampaignSearchVo extends SearchVo{
  read?: number;
  fundType?:string;
};