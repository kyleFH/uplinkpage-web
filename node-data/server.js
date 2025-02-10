const express = require('express');
const mysql = require('mysql2/promise'); // 使用 promise 版本的 mysql2
const cors = require('cors'); // 引入 CORS 中间件
const axios = require('axios');
const app = express();
const port = 3001;

// 使用 CORS 中间件
app.use(cors({
  origin: 'http://localhost:3000', // 允许来自该地址的跨域请求
}));

// 创建数据库连接池
const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '15222787859',
  database: 'my_database',
  waitForConnections: true,
  connectionLimit: 10, // 最大连接数
  queueLimit: 0
});

// 定义 API 端点
app.get('/api/jkresult_iiiii', async (req, res) => {
  const query = 'SELECT * FROM jkresult_iiiii'; // 示例查询
  try {
    const [results] = await pool.query(query);
    res.json(results);
  } catch (error) {
    console.error('Error executing query:', error);
    res.status(500).json({ error: 'Database query failed' });
  }
});

app.get('/api/jkresult-list', async (req, res) => {
  const { dd_name, jkdate, jkhour, jkmin } = req.query;

  // 检查必需的查询参数，除了 dd_name 允许为空字符串
  // if (jkdate === undefined || jkhour === undefined || jkmin === undefined) {
  //   return res.status(400).json({ error: 'Missing required query parameters' });
  // }

  try {
    // 构建查询和参数数组
    // let query = 'SELECT * FROM jkresult WHERE jkdate = ? AND jkhour = ? ';
    let query = 'SELECT * FROM jkresult WHERE dd_name = ? AND jkdate = ? AND jkhour = ?';

    const queryParams = [dd_name,jkdate, jkhour, jkmin];

    // if (dd_name && dd_name.trim() !== '') {
    //   query += ' AND dd_name = ?';
    //   queryParams.push(dd_name);
    // }

    const [results] = await pool.query(query, queryParams);
    res.json(results);
  } catch (error) {
    console.error('Error executing query:', error);
    res.status(500).json({ error: 'Database query failed' });
  }
});

app.get('/api/jkresult', async (req, res) => {
  const query = 'SELECT * FROM jkresult'; // 示例查询
  try {
    const [results] = await pool.query(query);
    res.json(results);
  } catch (error) {
    console.error('Error executing query:', error);
    res.status(500).json({ error: 'Database query failed' });
  }
});

app.get('/api/qbreson_result', async (req, res) => {
  const query = 'SELECT * FROM qbreson_result'; // 示例查询
  try {
    const [results] = await pool.query(query);
    res.json(results);
  } catch (error) {
    console.error('Error executing query:', error);
    res.status(500).json({ error: 'Database query failed' });
  }
});

app.get('/api/cts_result', async (req, res) => {
  const { dataTime,dataType } = req.query;
  
  try {
    const response = await axios.get('http://10.226.89.157:7508/store/openapi/v2/udap/QueryCTSsendByDataTypeAndDatatimeAndSenduser', {
      params: {
        apikey: '643f5a4b6eed11ed95c408c0eb6ebd7e',
        openApiId: '9070d72d41c147a39af1154760259869',
        openApiKey: 'f59c6eefddfd4d419a263aabce904e7c',
        data_type: 'B.0007.0001.R001',
        data_time: '2025-01-28 09:00',
        send: 'BABJ',
      }
    });
    res.json(response.data);
  } catch (error) {
    console.error('Error fetching data:', error.message);
    if (error.response) {
      // 服务器返回了一个状态码，表示请求失败
      console.error('Response status:', error.response.status);
      console.error('Response data:', error.response.data);
      res.status(error.response.status).send(error.response.data);
    } else if (error.request) {
      // 请求已经发出，但没有收到响应
      console.error('No response received:', error.request);
      res.status(500).send('No response received from server');
    } else {
      // 在设置请求时发生错误
      console.error('Request error:', error.message);
      res.status(500).send('Request error');
    }
  }
});


app.get('/api/cts_coll_result', async (req, res) => {
  const { dataTime,dataType } = req.query;
  
  try {
    const response = await axios.get('http://10.226.89.157:7508/store/openapi/v2/udap/QueryCTScollByDataTypeAndDatatime', {
      params: {
        apikey: '643f5a4b6eed11ed95c408c0eb6ebd7e',
        openApiId: '97381e6ed71c49aa8cc61a6d99b29fe3',
        openApiKey: 'f59c6eefddfd4d419a263aabce904e7c',
        // 根据需要更新其他参数
        data_type: 'B.0007.0001.R001',
        data_time: dataTime,
      }
    });
    res.json(response.data);
  } catch (error) {
    console.error('Error fetching data:', error.message);
    if (error.response) {
      // 服务器返回了一个状态码，表示请求失败
      console.error('Response status:', error.response.status);
      console.error('Response data:', error.response.data);
      res.status(error.response.status).send(error.response.data);
    } else if (error.request) {
      // 请求已经发出，但没有收到响应
      console.error('No response received:', error.request);
      res.status(500).send('No response received from server');
    } else {
      // 在设置请求时发生错误
      console.error('Request error:', error.message);
      res.status(500).send('Request error');
    }
  }
});

// 启动服务器
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
