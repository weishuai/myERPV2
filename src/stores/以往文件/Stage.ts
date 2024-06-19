import { SearchVo} from '../utils/SearchVo';
export class  StageSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class StageVo {
  id = '';

  name = '';

  description = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
