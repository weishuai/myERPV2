import { SearchVo} from '../utils/SearchVo';
export class  TaskAttachmentSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class TaskAttachmentVo {
  id = '';

  subject = '';

  note = '';

  attachment = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
