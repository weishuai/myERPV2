import { SearchVo} from '../utils/SearchVo';
export class  QuotationCommentsSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class QuotationCommentsVo {
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
