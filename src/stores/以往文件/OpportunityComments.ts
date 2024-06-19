import { SearchVo} from '../utils/SearchVo';
export class  OpportunityCommentsSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
};


export class OpportunityCommentsVo {
  id = '';

  mid = '';

  subject = '';

  assignTo = '';

  note = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
