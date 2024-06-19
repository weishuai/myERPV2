import { SearchVo} from '../utils/SearchVo';
export class  NoteSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class NoteVo {
  id = '';

  subject = '';

  relatedType = '';

  relatedTo = '';

  note = '';

  attachment = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
