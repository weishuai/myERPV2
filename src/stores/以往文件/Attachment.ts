import { SearchVo} from '../utils/SearchVo';
export class  AttachmentSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
  when?: '';
};


export class AttachmentVo {
  id = '';

  issueId = '';

  ownerId = '';

  ownerType = 0;

  dateUploaded?: Date = new Date();

  uploadUserId = '';

  when = '';

  isDel = 0;

  name = '';

  url = '';

  mimetype = '';

  size = 0;

  mid = '';
}
export class VendorAttachment {
  name = '';

  url = '';

  when = '';

  mimetype = '';

  size = 0;

  issueId = '';

  vendorId = '';
}
