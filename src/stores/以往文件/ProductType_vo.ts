import { SearchVo} from '../utils/SearchVo';
export class ProductTypeVo  {
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
export class ProductTypeSearchVo extends SearchVo{
  read?: number;
  fundType?:string;
};