SELECT IdSerra,  AVG(SE.TemperaturaSez)
FROM Serra SA INNER JOIN Sezione SE ON SA.CodSerra = SE.CodSerra
GROUP BY SE.IdSerra;