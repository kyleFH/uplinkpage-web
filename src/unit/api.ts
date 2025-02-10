const API_BASE_URL = 'http://localhost:3001/api';

// 定义一个接口来描述查询参数的结构
interface QueryParams {
  dd_name?: string;
  jkdate?: string;
  jkhour?: string;
  jkmin?: string;
  dataTime?: string;
  dataType?: string;
}

// 定义一个接口来描述查询参数的结构
interface DataTime {
  dataTime?: string;
}

// 定义 fetchData 函数的返回类型（假设返回的数据类型为 any，可以根据实际情况进行修改）
async function fetchData<T>(endpoint: string, params: QueryParams = {}): Promise<T> {
  try {
    // 构建查询字符串
    const queryString = new URLSearchParams(params as Record<string, string>).toString();
    const url = queryString ? `${API_BASE_URL}/${endpoint}?${queryString}` : `${API_BASE_URL}/${endpoint}`;

    console.log('url:', url);
    const response = await fetch(url);
    if (!response.ok) {
      throw new Error('Network response was not ok');
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Fetch error:', error);
    throw error;
  }
}

// 定义 getJkresultIiiii 函数的返回类型（假设返回的数据类型为 any，可以根据实际情况进行修改）
export async function getJkresultList<T>(dd_name?: string, jkdate?: string, jkhour?: string, jkmin?: string): Promise<T> {
  const params: QueryParams = {};
  if (dd_name) params.dd_name = dd_name;
  if (jkdate) params.jkdate = jkdate;
  if (jkhour) params.jkhour = jkhour;
  if (jkmin) params.jkmin = jkmin;

  return fetchData<T>('jkresult-list', params);
}



export async function getJkresultIiiii() {
  return fetchData('jkresult_iiiii');
}



export async function getJkresult() {
  return fetchData('jkresult');
}

export async function getQbresonResult() {
  return fetchData('qbreson_result');
}


//实发 api
export async function getQueryCTSsendByDataTypeAndDatatimeAndSenduser(dataTime: string,dataType:string) {
  const params: QueryParams = {};
  params.dataTime = dataTime;
  params.dataType = dataType;

  return fetchData('cts_result',params);
}
  

//实收 api
export async function getQueryCTScollByDataTypeAndDatatime(dataTime: string,dataType:string) {
  const params: QueryParams = {};
  params.dataTime = dataTime;
  params.dataType = dataType;

  return fetchData('cts_result',params);
}