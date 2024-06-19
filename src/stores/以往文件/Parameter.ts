import { SearchVo} from '../utils/SearchVo';
export class  ParameterSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};



export class ParameterVo {
  id?:'';

  key?:'';

  name?:'';

  description? :'';

  createdAt?:Date;

  updatedAt?:Date;

  isactived? :'0';

  islocked?: '0';

  createUid?: '';

  updatedUid?: '';
}
