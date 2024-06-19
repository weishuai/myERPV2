import { SearchVo} from '../utils/SearchVo';
export class FHcrmTable1Vo  {
  id?:string;
  name?:string;
  description?:string;
  fhF1?: string;
  fhF2?: string;
  fhF3?: any;
  fhF4?: number;
  fhF5?: Date;
  fhF6?:  Date;
  fhF7?:  Date;
  fhF8?: number;
  fhF9?: number;
  fhF10?: number;

  createdAt?:Date;
  updatedAt?:Date;
  isactived?:string;
  islocked?:string;
  createUid?:string;
  updatedUid?:string;
}
export class FHcrmTable1SearchVo extends SearchVo{
  read?: number;
  fundType?:string;
};