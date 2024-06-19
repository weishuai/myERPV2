import { SearchVo} from '../utils/SearchVo';
export class AccountTagVo  {
  id?:string;
  name?:string;
  description?:string;
  createdAt?:Date;
  updatedAt?:Date;
  isactived?:string;
  islocked?:string;
  createUid?:string;
  updatedUid?:string;
}
export class AccountTagSearchVo extends SearchVo{
  read?: number;
  fundType?:string;
};