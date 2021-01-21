<template>
    <b-card no-body>
        <b-card-header class="border-0">
            <h3 class="mb-0">{{this.dataRoom.name}}</h3>
        </b-card-header>

        <el-table class="table-responsive table"
                  header-row-class-name="thead-light"
                  :data="this.sensors">
            <el-table-column label="Sensor name"
                             min-width="310px"
                             prop="name">
                <template v-slot="{row}">
                    <b-media no-body class="align-items-center">
                        <!-- <a href="#" class="avatar rounded-circle mr-3">
                            <img alt="Image placeholder" :src="row.img">
                        </a> -->
                        <b-media-body>
                            <router-link :to="{name: 'sensorDetail', params:{sensor: row.id}}"> <span class="font-weight-600 name mb-0 text-sm">{{row.name}}</span></router-link>
                          </b-media-body>
                    </b-media>
                </template>
            </el-table-column>

             <el-table-column label="Type"
                             min-width="310px"
                             prop="type">
                <template v-slot="{row}">
                    <b-media no-body class="align-items-center">
                        <b-media-body>
                            <span class="font-weight-600 name mb-0 text-sm">{{row.sensortype.charAt(0).toUpperCase() + row.sensortype.substring(1)}}</span>
                        </b-media-body>
                    </b-media>
                </template>
            </el-table-column>

             <el-table-column label="Actuator"
                             min-width="310px"
                             prop="actuator">
                <template v-slot="{row}">
                    <b-media no-body class="align-items-center">
                        <!-- <a href="#" class="avatar rounded-circle mr-3">
                            <img alt="Image placeholder" :src="row.img">
                        </a> -->
                        <b-media-body>
                            <span class="font-weight-600 name mb-0 text-sm">{{getSensorName(row.actuator) }}</span>
                        </b-media-body>
                    </b-media>
                </template>
            </el-table-column>

             <el-table-column label="GPIO"
                             min-width="310px"
                             prop="gpio">
                <template v-slot="{row}">
                    <b-media no-body class="align-items-center">
                        <!-- <a href="#" class="avatar rounded-circle mr-3">
                            <img alt="Image placeholder" :src="row.img">
                        </a> -->
                        <b-media-body>
                            <span class="font-weight-600 name mb-0 text-sm">{{row.gpio}}</span>
                        </b-media-body>
                    </b-media>
                </template>
            </el-table-column>

             <el-table-column label="Sensor status"
                             min-width="310px"
                             prop="status">
                <template v-slot="{row}">
                    <b-media no-body class="align-items-center">
                        <!-- <a href="#" class="avatar rounded-circle mr-3">
                            <img alt="Image placeholder" :src="row.img">
                        </a> -->
                        <b-media-body>
                            <span class="font-weight-600 name mb-0 text-sm">{{row.status}}</span>
                        </b-media-body>
                    </b-media>
                </template>
            </el-table-column>

            
        </el-table>
    </b-card>
</template>
<script>
  import { Table, TableColumn} from 'element-ui'
  import axios from 'axios'
  export default {
    name: 'light-table',
    props: ['dataRoom'],
    components: {
      [Table.name]: Table,
      [TableColumn.name]: TableColumn
    },
    data() {
      return {
        room: '',
        sensors: [],
        currentPage: 1
      };
    },
    mounted() {
        console.log(this.dataRoom)
        this.getSensors()
    },
    methods: {
      getSensors(){
        axios.get('http://161.35.8.148/api/sensorsofroom/?room='+this.dataRoom.id).then(response=>{
          console.log(response)
          this.sensors = response.data
        })
      },
      getSensorName(id){
          for (var i = 0; i < this.sensors.length; i++){
              if( this.sensors[i].id == id){
                  return this.sensors[i].name
              }
          }
          return 'Empty'
      }
     },
  }
</script>
