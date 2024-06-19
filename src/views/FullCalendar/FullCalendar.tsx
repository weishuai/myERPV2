import React,{useState} from 'react';
// import '@fullcalendar/common/main.css'
// import '@fullcalendar/daygrid/main.css'
// import '@fullcalendar/timegrid/main.css'
import FullCalendar from '@fullcalendar/react'
import { Dialog } from 'primereact/dialog';
import { InputText } from 'primereact/inputtext';
import interactionPlugin from '@fullcalendar/interaction'
import daygridPlugin from '@fullcalendar/daygrid'
import timeGridPlugin from '@fullcalendar/timegrid'
import { globalStorage } from '../../utils/Globalstorage';

const FHFullCalendar=() => {
  const [selectedEvent, setSelectedEvent] = useState(null);
  const [eventDialog, setEventDialog] = useState<boolean>(false);
  let fhlocaleok= "zh-cn";
  let buttonText={today: '今天',month: '月',week: '周', day: '日'}
  const fhlocale=globalStorage.get("locale")
  
  if(fhlocale=="cn")
  {
   fhlocaleok= "zh-cn";
   //fhlocaleok= "zh-cn";
   buttonText={today: '今天',month: '月',week: '周', day: '日'}
  }
  else
  {
    fhlocaleok= "en";
    buttonText={today: 'today',month: 'month',week: 'wee', day: 'day'}
  }
  const events = [
    {
      id: 'Event1',
      title: 'Event 1',
      start: '2024-05-27'
    },
    {
      id: 'Event2',
      title: 'Event 2',
      start: '2024-05-27'
    }];

    const handleEventClick = (clickInfo) => {
      setSelectedEvent(clickInfo.event);
      console.log('clickInfo.event:' +clickInfo.event.id);
      setEventDialog(true);
    };
    return(<>

    <FullCalendar
        plugins={[daygridPlugin,interactionPlugin, timeGridPlugin]}
        locale= {fhlocaleok}
        buttonText={buttonText}
        headerToolbar={{
          left: 'prev,next,today',
          center: 'title',
          right: 'dayGridMonth,timeGridWeek,timeGridDay'
        }}
        allDaySlot={false}
        initialView='dayGridMonth'
        nowIndicator={true}
        editable={true}
        events={events}
        eventClick={handleEventClick}
        initialEvents={[
          { title: 'nice event',id:"111", start: new Date() }
        ]}
      />
      
      <Dialog visible={eventDialog} style={{ width: '800px',height: "450px" }} header="日历详细" modal closable onHide={() => setEventDialog(false)}>
      
          {selectedEvent ? (
              <div>ID-{selectedEvent.id}</div>
            ) : (
              <div>数据暂无</div>
            )}
                    
     </Dialog>  

      </>  
    )
}

export default FHFullCalendar;