-- ENUM: PROVINCIAS_ESP
CREATE TYPE PROVINCIAS_ESP AS ENUM ('Álava', 'Albacete', 'Alicante', 'Almería', 'Asturias', 'Ávila', 'Badajoz', 'Barcelona', 'Burgos', 'Cáceres', 'Cádiz', 'Cantabria', 'Castellón', 'Ciudad Real', 'Córdoba', 'Cuenca', 'Gerona', 'Granada', 'Guadalajara', 'Guipúzcoa', 'Huelva', 'Huesca', 'Islas Baleares', 'Jaén', 'La Coruña', 'La Rioja', 'Las Palmas', 'León', 'Lérida', 'Lugo', 'Madrid', 'Málaga', 'Murcia', 'Navarra', 'Orense', 'Palencia', 'Pontevedra', 'Salamanca', 'Santa Cruz de Tenerife', 'Segovia', 'Sevilla', 'Soria', 'Tarragona', 'Teruel', 'Toledo', 'Valencia', 'Valladolid', 'Vizcaya', 'Zamora', 'Zaragoza', 'Ceuta', 'Melilla');

-- ENUM: COMUNIDADES_ESP
CREATE TYPE COMUNIDADES_ESP AS ENUM ('Andalucía', 'Aragón', 'Asturias', 'Islas Baleares', 'Canarias', 'Cantabria', 'Castilla-La Mancha', 'Castilla y León', 'Cataluña', 'Extremadura', 'Galicia', 'La Rioja', 'Madrid', 'Murcia', 'Navarra', 'País Vasco', 'Comunidad Valenciana', 'Ceuta', 'Melilla');

-- ENUM: PAISES
CREATE TYPE PAISES AS ENUM ('Afganistán', 'Albania', 'Alemania', 'Andorra', 'Angola', 'Argentina', 'Armenia', 'Australia', 'Austria', 'Azerbaiyán', 'Bahamas', 'Bangladés', 'Bélgica', 'Belice', 'Benín', 'Bielorrusia', 'Bolivia', 'Bosnia y Herzegovina', 'Brasil', 'Bulgaria', 'Camboya', 'Camerún', 'Canadá', 'Chile', 'China', 'Colombia', 'Corea del Norte', 'Corea del Sur', 'Costa Rica', 'Croacia', 'Cuba', 'Dinamarca', 'Ecuador', 'Egipto', 'El Salvador', 'Emiratos Árabes Unidos', 'Eslovaquia', 'Eslovenia', 'España', 'Estados Unidos', 'Estonia', 'Etiopía', 'Filipinas', 'Finlandia', 'Francia', 'Georgia', 'Ghana', 'Grecia', 'Guatemala', 'Haití', 'Honduras', 'Hungría', 'India', 'Indonesia', 'Irak', 'Irán', 'Irlanda', 'Islandia', 'Israel', 'Italia', 'Jamaica', 'Japón', 'Jordania', 'Kazajistán', 'Kenia', 'Kuwait', 'Letonia', 'Líbano', 'Liberia', 'Libia', 'Liechtenstein', 'Lituania', 'Luxemburgo', 'Macedonia del Norte', 'Madagascar', 'Malasia', 'Malí', 'Malta', 'Marruecos', 'México', 'Moldavia', 'Mónaco', 'Mongolia', 'Montenegro', 'Mozambique', 'Namibia', 'Nepal', 'Nicaragua', 'Níger', 'Nigeria', 'Noruega', 'Nueva Zelanda', 'Países Bajos', 'Pakistán', 'Panamá', 'Paraguay', 'Perú', 'Polonia', 'Portugal', 'Qatar', 'Reino Unido', 'República Checa', 'República Democrática del Congo', 'República Dominicana', 'Ruanda', 'Rumanía', 'Rusia', 'Senegal', 'Serbia', 'Singapur', 'Siria', 'Somalia', 'Sri Lanka', 'Sudáfrica', 'Sudán', 'Suecia', 'Suiza', 'Tailandia', 'Tanzania', 'Túnez', 'Turkmenistán', 'Turquía', 'Ucrania', 'Uganda', 'Uruguay', 'Uzbekistán', 'Venezuela', 'Vietnam', 'Yemen', 'Yibuti', 'Zambia', 'Zimbabue');

-- ENUM: MESES
CREATE TYPE MESES AS ENUM ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre');

-- ENUM: TRIMESTRE
CREATE TYPE TRIMESTRE AS ENUM ('Primero', 'Segundo', 'Tercero', 'Cuarto');

-- ENUM: DIAMES
CREATE TYPE DIAMES AS ENUM ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31');

-- ENUM: TRAMOEDADHUERFANO
CREATE TYPE TRAMOEDADHUERFANO AS ENUM ('0-2', '3-5', '6-8', '9-11', '12-14', '15-18', '+18');

-- ENUM: ESTUDIOS
CREATE TYPE ESTUDIOS AS ENUM ('Sin Estudios', 'Primarios', 'Bachiller o equivalente FP', 'Universitarios', 'Estudios universitarios sin finalizar', 'Otros estudios');

-- ENUM: TIPOSDISCAPACIDADES
CREATE TYPE TIPOSDISCAPACIDADES AS ENUM ('Intelectual', 'Física', 'Auditiva', 'Visual', 'Otras');

-- ENUM: PORCENTAGEDISCAPACIDAD
CREATE TYPE PORCENTAGEDISCAPACIDAD AS ENUM ('-33%', '+33%', '+65%');

-- ENUM: TRAMOEDAD
CREATE TYPE TRAMOEDAD AS ENUM ('<16 años', '16-17 años', '18-20 años', '21-30 años', '31-40 años', '41-50 años', '51-60 años', '61-70 años', '71-84 años', '>=85 años');

-- ENUM: PAIS
CREATE TYPE PAIS AS ENUM ('España', 'Otro país');

-- ENUM: SUICIDIOAGRESOR
CREATE TYPE SUICIDIOAGRESOR AS ENUM ('No hubo tentativa', 'Tentativa no consumada', 'Suicidio consumado');

-- ENUM: RELACIONVICTIMAAGRESOR
CREATE TYPE RELACIONVICTIMAAGRESOR AS ENUM ('Pareja', 'Expareja', 'Pareja en fase de separación');

-- ENUM: BOOLEANOSIMPLE
CREATE TYPE BOOLEANOSIMPLE AS ENUM ('Si', 'No');

-- ENUM: DENUNCIA
CREATE TYPE DENUNCIA AS ENUM ('No consta denuncia', 'No había denuncia', 'Había denuncia');

-- ENUM: ACOGIDAINMEDIATA
CREATE TYPE ACOGIDAINMEDIATA AS ENUM ('Familiares próximos', 'Administración');

-- ENUM: ACOGIDADEFINITIVA
CREATE TYPE ACOGIDADEFINITIVA AS ENUM ('Familiares próximos', 'Administración', 'Personas próximas', 'Familia de acogida');

-- ENUM: REDESAPOYO
CREATE TYPE REDESAPOYO AS ENUM ('Amigos', 'Vecindario', 'Lugar de residencia', 'Centro educativo', 'Otros');

-- ENUM: DIAGNOSTICOTRAUMA
CREATE TYPE DIAGNOSTICOTRAUMA AS ENUM ('Hipervigilancia', 'Alteraciones del sueño', 'Confusión', 'Ira', 'Irritabilidad', 'Reacciones emocionales injustificadas', 'Dificultades de concentración');

-- ENUM: DIAGNOSTICOALIMENTARIO
CREATE TYPE DIAGNOSTICOALIMENTARIO AS ENUM ('Anorexia nerviosa', 'Bulimia nerviosa', 'Hiperfagia', 'Trastorno por atracón', 'Restricción de la ingesta de alimentos', 'Inanición', 'Pérdida brusca de peso', 'Incremento elevado de peso', 'Distorsión cognitiva respecto al propio cuerpo');

-- ENUM: DIAGNOSTICOANIMO
CREATE TYPE DIAGNOSTICOANIMO AS ENUM ('Depresión', 'Bipolaridad', 'Desregulación disruptiva', 'Ansioso-depresivo', 'Tristeza recurrente', 'Ansiedad persistente', 'Arrebatos de ira/irritabilidad', 'Frustración', 'Anhedonia', 'Miedo intenso', 'repentino e inesperado', 'Activación psicofisiológica');

-- ENUM: DIAGNOSTICOSUENO
CREATE TYPE DIAGNOSTICOSUENO AS ENUM ('Insomnio', 'Hipersomnia', 'Bruxismo', 'Parasomnias', 'Síndrome de piernas inquietas');

-- ENUM: DIAGNOSTICOAPEGO
CREATE TYPE DIAGNOSTICOAPEGO AS ENUM ('Ansioso-ambivalente', 'Evitativo', 'Desorganizado', 'Dificultad para crear y mantener vínculos');

-- ENUM: DIAGNOSTICOLENGUAJE
CREATE TYPE DIAGNOSTICOLENGUAJE AS ENUM ('Mutismo selectivo', 'Retraso simple del lenguaje', 'Dislalias', 'Disfasia');

-- ENUM: DIAGNOSTICOOTROS
CREATE TYPE DIAGNOSTICOOTROS AS ENUM ('Retraso en el crecimiento', 'Problemas del desarrollo motor', 'Enfermedades y síntomas psicosomáticos', 'Síntomas disociativos', 'Problemas de autoestima y autoconcepto', 'Conductas violentas y/o autodestructivas', 'Déficit de atención e hiperactividad', 'Dislexia', 'Retraso en el aprendizaje y desarrollo cognitivo', 'Disgrafía', 'Alteración del rendimiento y adaptación escolar', 'Absentismo escolar', 'Conductas regresivas en el desarrollo', 'Escasas habilidades sociales', 'Evitación de relaciones sociales');

-- ENUM: SERVICIOS
CREATE TYPE SERVICIOS AS ENUM ('Públicos', 'Privados', 'Asociacionismo');

-- ENUM: AYUDARECIBIDASINO
CREATE TYPE AYUDARECIBIDASINO AS ENUM ('Ayuda recibida', 'Ayuda NO recibida');

-- ENUM: TIEMPOAYUDA
CREATE TYPE TIEMPOAYUDA AS ENUM ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años');

-- ENUM: PERIODICIDAD
CREATE TYPE PERIODICIDAD AS ENUM ('Diaria', 'Semanal', 'Quincenal', 'Mensual', 'Bimensual', 'Trimestral', 'Semestral', 'Anual', 'Fines de semana', 'Vacaciones escolares', 'Días alternos');

-- ENUM: SITUACIONFEMINICIDAINMEDIATA
CREATE TYPE SITUACIONFEMINICIDAINMEDIATA AS ENUM ('Suicidio', 'Fugado', 'Detención policial y adopción de medidas cautelares penales');

-- ENUM: SITUACIONFEMINICIDAACTUALIDAD
CREATE TYPE SITUACIONFEMINICIDAACTUALIDAD AS ENUM ('Fugado', 'Pendiente de juicio en prisión provisional', 'Pendiente de juicio en libertad provisional', 'Condenado y cumpliendo condena de prisión permanente revisable', 'Condenado y cumpliendo condena de prisión', 'Condenado y clasificado en tercer grado penitenciario', 'Condenado y en libertad condicional', 'Condenado', 'pero ya en libertad por cumplimiento de la pena', 'En libertad con prohibiciones de aproximación y comunicación y residencia', 'Absuelto del delito', 'Muerto');

-- TABLE: HUERFANOFEMINICIDIO
CREATE TABLE HUERFANOFEMINICIDIO (
  CLAVE INT PRIMARY KEY,
  ANO INT NOT NULL,
  MES MESES NOT NULL CHECK(MES IN ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre')) NOT NULL,
  TRIMESTRE TRIMESTRE NOT NULL CHECK(TRIMESTRE IN ('Primero', 'Segundo', 'Tercero', 'Cuarto')) NOT NULL,
  DIA DIAMES CHECK(DIA IS NULL OR DIA IN ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31')),
  CA COMUNIDADES_ESP NOT NULL CHECK(CA IN ('Andalucía', 'Aragón', 'Asturias', 'Islas Baleares', 'Canarias', 'Cantabria', 'Castilla-La Mancha', 'Castilla y León', 'Cataluña', 'Extremadura', 'Galicia', 'La Rioja', 'Madrid', 'Murcia', 'Navarra', 'País Vasco', 'Comunidad Valenciana', 'Ceuta', 'Melilla')) NOT NULL,
  PROVINCIA PROVINCIAS_ESP NOT NULL CHECK(PROVINCIA IN ('Álava', 'Albacete', 'Alicante', 'Almería', 'Asturias', 'Ávila', 'Badajoz', 'Barcelona', 'Burgos', 'Cáceres', 'Cádiz', 'Cantabria', 'Castellón', 'Ciudad Real', 'Córdoba', 'Cuenca', 'Gerona', 'Granada', 'Guadalajara', 'Guipúzcoa', 'Huelva', 'Huesca', 'Islas Baleares', 'Jaén', 'La Coruña', 'La Rioja', 'Las Palmas', 'León', 'Lérida', 'Lugo', 'Madrid', 'Málaga', 'Murcia', 'Navarra', 'Orense', 'Palencia', 'Pontevedra', 'Salamanca', 'Santa Cruz de Tenerife', 'Segovia', 'Sevilla', 'Soria', 'Tarragona', 'Teruel', 'Toledo', 'Valencia', 'Valladolid', 'Vizcaya', 'Zamora', 'Zaragoza', 'Ceuta', 'Melilla')) NOT NULL,
  FECHA_NACIMIENTO_HUERFANO DATE,
  TRAMO_EDAD_HUERFANO TRAMOEDADHUERFANO CHECK(TRAMO_EDAD_HUERFANO IS NULL OR TRAMO_EDAD_HUERFANO IN ('0-2', '3-5', '6-8', '9-11', '12-14', '15-18', '+18')),
  EDAD_HUERFANO INT,
  PAIS_NACIMIENTO_HUERFANO PAISES CHECK(PAIS_NACIMIENTO_HUERFANO IS NULL OR PAIS_NACIMIENTO_HUERFANO IN ('Afganistán', 'Albania', 'Alemania', 'Andorra', 'Angola', 'Argentina', 'Armenia', 'Australia', 'Austria', 'Azerbaiyán', 'Bahamas', 'Bangladés', 'Bélgica', 'Belice', 'Benín', 'Bielorrusia', 'Bolivia', 'Bosnia y Herzegovina', 'Brasil', 'Bulgaria', 'Camboya', 'Camerún', 'Canadá', 'Chile', 'China', 'Colombia', 'Corea del Norte', 'Corea del Sur', 'Costa Rica', 'Croacia', 'Cuba', 'Dinamarca', 'Ecuador', 'Egipto', 'El Salvador', 'Emiratos Árabes Unidos', 'Eslovaquia', 'Eslovenia', 'España', 'Estados Unidos', 'Estonia', 'Etiopía', 'Filipinas', 'Finlandia', 'Francia', 'Georgia', 'Ghana', 'Grecia', 'Guatemala', 'Haití', 'Honduras', 'Hungría', 'India', 'Indonesia', 'Irak', 'Irán', 'Irlanda', 'Islandia', 'Israel', 'Italia', 'Jamaica', 'Japón', 'Jordania', 'Kazajistán', 'Kenia', 'Kuwait', 'Letonia', 'Líbano', 'Liberia', 'Libia', 'Liechtenstein', 'Lituania', 'Luxemburgo', 'Macedonia del Norte', 'Madagascar', 'Malasia', 'Malí', 'Malta', 'Marruecos', 'México', 'Moldavia', 'Mónaco', 'Mongolia', 'Montenegro', 'Mozambique', 'Namibia', 'Nepal', 'Nicaragua', 'Níger', 'Nigeria', 'Noruega', 'Nueva Zelanda', 'Países Bajos', 'Pakistán', 'Panamá', 'Paraguay', 'Perú', 'Polonia', 'Portugal', 'Qatar', 'Reino Unido', 'República Checa', 'República Democrática del Congo', 'República Dominicana', 'Ruanda', 'Rumanía', 'Rusia', 'Senegal', 'Serbia', 'Singapur', 'Siria', 'Somalia', 'Sri Lanka', 'Sudáfrica', 'Sudán', 'Suecia', 'Suiza', 'Tailandia', 'Tanzania', 'Túnez', 'Turkmenistán', 'Turquía', 'Ucrania', 'Uganda', 'Uruguay', 'Uzbekistán', 'Venezuela', 'Vietnam', 'Yemen', 'Yibuti', 'Zambia', 'Zimbabue')),
  ESTUDIOS_HUERFANO ESTUDIOS CHECK(ESTUDIOS_HUERFANO IS NULL OR ESTUDIOS_HUERFANO IN ('Sin Estudios', 'Primarios', 'Bachiller o equivalente FP', 'Universitarios', 'Estudios universitarios sin finalizar', 'Otros estudios')),
  OTROS_ESTUDIOS_HUERFANO STRING,
  DISCAPACIDAD_HUERFANO BOOLEAN,
  TIPO_DISCAPACIDAD_HUERFANO TIPOSDISCAPACIDADES CHECK(TIPO_DISCAPACIDAD_HUERFANO IS NULL OR TIPO_DISCAPACIDAD_HUERFANO IN ('Intelectual', 'Física', 'Auditiva', 'Visual', 'Otras')),
  OTRA_DISCAPACIDAD_HUERFANO STRING,
  GRADO_DISCAPACIDAD_HUERFANO PORCENTAGEDISCAPACIDAD CHECK(GRADO_DISCAPACIDAD_HUERFANO IS NULL OR GRADO_DISCAPACIDAD_HUERFANO IN ('-33%', '+33%', '+65%')),
  NUM_HERMANOS_BIOLOGICOS INT,
  NUM_HERMANOS_ADOPTIVOS INT,
  NUM_HERMANOS_ANTERIORES_RELACIONES_PADRE INT,
  NUM_HERMANOS_ANTERIORES_RELACIONES_MADRE INT,
  FECHA_NACIMIENTO_VICTIMA DATE,
  TRAMO_EDAD_VICTIMA TRAMOEDAD CHECK(TRAMO_EDAD_VICTIMA IS NULL OR TRAMO_EDAD_VICTIMA IN ('<16 años', '16-17 años', '18-20 años', '21-30 años', '31-40 años', '41-50 años', '51-60 años', '61-70 años', '71-84 años', '>=85 años')),
  EDAD_VICTIMA INT,
  PAIS_NACIMIENTO_VICTIMA PAIS CHECK(PAIS_NACIMIENTO_VICTIMA IS NULL OR PAIS_NACIMIENTO_VICTIMA IN ('España', 'Otro país')),
  OTRO_PAIS_NACIMIENTO_VICTIMA PAISES CHECK(OTRO_PAIS_NACIMIENTO_VICTIMA IS NULL OR OTRO_PAIS_NACIMIENTO_VICTIMA IN ('Afganistán', 'Albania', 'Alemania', 'Andorra', 'Angola', 'Argentina', 'Armenia', 'Australia', 'Austria', 'Azerbaiyán', 'Bahamas', 'Bangladés', 'Bélgica', 'Belice', 'Benín', 'Bielorrusia', 'Bolivia', 'Bosnia y Herzegovina', 'Brasil', 'Bulgaria', 'Camboya', 'Camerún', 'Canadá', 'Chile', 'China', 'Colombia', 'Corea del Norte', 'Corea del Sur', 'Costa Rica', 'Croacia', 'Cuba', 'Dinamarca', 'Ecuador', 'Egipto', 'El Salvador', 'Emiratos Árabes Unidos', 'Eslovaquia', 'Eslovenia', 'España', 'Estados Unidos', 'Estonia', 'Etiopía', 'Filipinas', 'Finlandia', 'Francia', 'Georgia', 'Ghana', 'Grecia', 'Guatemala', 'Haití', 'Honduras', 'Hungría', 'India', 'Indonesia', 'Irak', 'Irán', 'Irlanda', 'Islandia', 'Israel', 'Italia', 'Jamaica', 'Japón', 'Jordania', 'Kazajistán', 'Kenia', 'Kuwait', 'Letonia', 'Líbano', 'Liberia', 'Libia', 'Liechtenstein', 'Lituania', 'Luxemburgo', 'Macedonia del Norte', 'Madagascar', 'Malasia', 'Malí', 'Malta', 'Marruecos', 'México', 'Moldavia', 'Mónaco', 'Mongolia', 'Montenegro', 'Mozambique', 'Namibia', 'Nepal', 'Nicaragua', 'Níger', 'Nigeria', 'Noruega', 'Nueva Zelanda', 'Países Bajos', 'Pakistán', 'Panamá', 'Paraguay', 'Perú', 'Polonia', 'Portugal', 'Qatar', 'Reino Unido', 'República Checa', 'República Democrática del Congo', 'República Dominicana', 'Ruanda', 'Rumanía', 'Rusia', 'Senegal', 'Serbia', 'Singapur', 'Siria', 'Somalia', 'Sri Lanka', 'Sudáfrica', 'Sudán', 'Suecia', 'Suiza', 'Tailandia', 'Tanzania', 'Túnez', 'Turkmenistán', 'Turquía', 'Ucrania', 'Uganda', 'Uruguay', 'Uzbekistán', 'Venezuela', 'Vietnam', 'Yemen', 'Yibuti', 'Zambia', 'Zimbabue')),
  ESTUDIOS_VICTIMA ESTUDIOS CHECK(ESTUDIOS_VICTIMA IS NULL OR ESTUDIOS_VICTIMA IN ('Sin Estudios', 'Primarios', 'Bachiller o equivalente FP', 'Universitarios', 'Estudios universitarios sin finalizar', 'Otros estudios')),
  OTROS_ESTUDIOS_VICTIMA STRING,
  PROFESION_VICTIMA STRING,
  DISCAPACIDAD_VICTIMA BOOLEAN,
  TIPO_DISCAPACIDAD_VICTIMA TIPOSDISCAPACIDADES CHECK(TIPO_DISCAPACIDAD_VICTIMA IS NULL OR TIPO_DISCAPACIDAD_VICTIMA IN ('Intelectual', 'Física', 'Auditiva', 'Visual', 'Otras')),
  OTRA_DISCAPACIDAD_VICTIMA STRING,
  GRADO_DISCAPACIDAD_VICTIMA PORCENTAGEDISCAPACIDAD CHECK(GRADO_DISCAPACIDAD_VICTIMA IS NULL OR GRADO_DISCAPACIDAD_VICTIMA IN ('-33%', '+33%', '+65%')),
  FECHA_NACIMIENTO_AGRESOR DATE,
  TRAMO_EDAD_AGRESOR TRAMOEDAD CHECK(TRAMO_EDAD_AGRESOR IS NULL OR TRAMO_EDAD_AGRESOR IN ('<16 años', '16-17 años', '18-20 años', '21-30 años', '31-40 años', '41-50 años', '51-60 años', '61-70 años', '71-84 años', '>=85 años')),
  EDAD_AGRESOR INT,
  PAIS_NACIMIENTO_AGRESOR PAIS CHECK(PAIS_NACIMIENTO_AGRESOR IS NULL OR PAIS_NACIMIENTO_AGRESOR IN ('España', 'Otro país')),
  OTRO_PAIS_NACIMIENTO_AGRESOR PAISES CHECK(OTRO_PAIS_NACIMIENTO_AGRESOR IS NULL OR OTRO_PAIS_NACIMIENTO_AGRESOR IN ('Afganistán', 'Albania', 'Alemania', 'Andorra', 'Angola', 'Argentina', 'Armenia', 'Australia', 'Austria', 'Azerbaiyán', 'Bahamas', 'Bangladés', 'Bélgica', 'Belice', 'Benín', 'Bielorrusia', 'Bolivia', 'Bosnia y Herzegovina', 'Brasil', 'Bulgaria', 'Camboya', 'Camerún', 'Canadá', 'Chile', 'China', 'Colombia', 'Corea del Norte', 'Corea del Sur', 'Costa Rica', 'Croacia', 'Cuba', 'Dinamarca', 'Ecuador', 'Egipto', 'El Salvador', 'Emiratos Árabes Unidos', 'Eslovaquia', 'Eslovenia', 'España', 'Estados Unidos', 'Estonia', 'Etiopía', 'Filipinas', 'Finlandia', 'Francia', 'Georgia', 'Ghana', 'Grecia', 'Guatemala', 'Haití', 'Honduras', 'Hungría', 'India', 'Indonesia', 'Irak', 'Irán', 'Irlanda', 'Islandia', 'Israel', 'Italia', 'Jamaica', 'Japón', 'Jordania', 'Kazajistán', 'Kenia', 'Kuwait', 'Letonia', 'Líbano', 'Liberia', 'Libia', 'Liechtenstein', 'Lituania', 'Luxemburgo', 'Macedonia del Norte', 'Madagascar', 'Malasia', 'Malí', 'Malta', 'Marruecos', 'México', 'Moldavia', 'Mónaco', 'Mongolia', 'Montenegro', 'Mozambique', 'Namibia', 'Nepal', 'Nicaragua', 'Níger', 'Nigeria', 'Noruega', 'Nueva Zelanda', 'Países Bajos', 'Pakistán', 'Panamá', 'Paraguay', 'Perú', 'Polonia', 'Portugal', 'Qatar', 'Reino Unido', 'República Checa', 'República Democrática del Congo', 'República Dominicana', 'Ruanda', 'Rumanía', 'Rusia', 'Senegal', 'Serbia', 'Singapur', 'Siria', 'Somalia', 'Sri Lanka', 'Sudáfrica', 'Sudán', 'Suecia', 'Suiza', 'Tailandia', 'Tanzania', 'Túnez', 'Turkmenistán', 'Turquía', 'Ucrania', 'Uganda', 'Uruguay', 'Uzbekistán', 'Venezuela', 'Vietnam', 'Yemen', 'Yibuti', 'Zambia', 'Zimbabue')),
  ESTUDIOS_AGRESOR ESTUDIOS CHECK(ESTUDIOS_AGRESOR IS NULL OR ESTUDIOS_AGRESOR IN ('Sin Estudios', 'Primarios', 'Bachiller o equivalente FP', 'Universitarios', 'Estudios universitarios sin finalizar', 'Otros estudios')),
  PROFESION_AGRESOR STRING,
  SUICIDIO_AGRESOR SUICIDIOAGRESOR NOT NULL CHECK(SUICIDIO_AGRESOR IN ('No hubo tentativa', 'Tentativa no consumada', 'Suicidio consumado')) NOT NULL,
  RELACION_VICTIMA_AGRESOR RELACIONVICTIMAAGRESOR NOT NULL CHECK(RELACION_VICTIMA_AGRESOR IN ('Pareja', 'Expareja', 'Pareja en fase de separación')) NOT NULL,
  CONVIVENCIA_VICTIMA_AGRESOR BOOLEANOSIMPLE CHECK(CONVIVENCIA_VICTIMA_AGRESOR IS NULL OR CONVIVENCIA_VICTIMA_AGRESOR IN ('Si', 'No')),
  DENUNCIA DENUNCIA NOT NULL CHECK(DENUNCIA IN ('No consta denuncia', 'No había denuncia', 'Había denuncia')) NOT NULL,
  ACOGIDA_INMEDIATA_HUERFANO ACOGIDAINMEDIATA CHECK(ACOGIDA_INMEDIATA_HUERFANO IS NULL OR ACOGIDA_INMEDIATA_HUERFANO IN ('Familiares próximos', 'Administración')),
  ACOGIDA_DEFINITIVA_HUERFANO ACOGIDADEFINITIVA CHECK(ACOGIDA_DEFINITIVA_HUERFANO IS NULL OR ACOGIDA_DEFINITIVA_HUERFANO IN ('Familiares próximos', 'Administración', 'Personas próximas', 'Familia de acogida')),
  SEPARACION_HERMANOS_HUERFANO BOOLEANOSIMPLE CHECK(SEPARACION_HERMANOS_HUERFANO IS NULL OR SEPARACION_HERMANOS_HUERFANO IN ('Si', 'No')),
  SEPARACION_REDES_APOYO_HUERFANO BOOLEANOSIMPLE CHECK(SEPARACION_REDES_APOYO_HUERFANO IS NULL OR SEPARACION_REDES_APOYO_HUERFANO IN ('Si', 'No')),
  QUE_REDES_APOYO_HUERFANO REDESAPOYO CHECK(QUE_REDES_APOYO_HUERFANO IS NULL OR QUE_REDES_APOYO_HUERFANO IN ('Amigos', 'Vecindario', 'Lugar de residencia', 'Centro educativo', 'Otros')),
  DIAGNOSTICO_SINTOMA_PREVIO BOOLEANOSIMPLE CHECK(DIAGNOSTICO_SINTOMA_PREVIO IS NULL OR DIAGNOSTICO_SINTOMA_PREVIO IN ('Si', 'No')),
  ESPECIFICAR_PREVIO STRING,
  SINTOMAS_POSTERIORES BOOLEANOSIMPLE CHECK(SINTOMAS_POSTERIORES IS NULL OR SINTOMAS_POSTERIORES IN ('Si', 'No')),
  ESPECIFICAR_SINTOMA_POSTERIOR STRING,
  DIAGNOSTICO_POSTERIOR BOOLEANOSIMPLE CHECK(DIAGNOSTICO_POSTERIOR IS NULL OR DIAGNOSTICO_POSTERIOR IN ('Si', 'No')),
  DIAGNOSTICO_ESTRES_POSTRAUMATICO_HUERFANO DIAGNOSTICOTRAUMA CHECK(DIAGNOSTICO_ESTRES_POSTRAUMATICO_HUERFANO IS NULL OR DIAGNOSTICO_ESTRES_POSTRAUMATICO_HUERFANO IN ('Hipervigilancia', 'Alteraciones del sueño', 'Confusión', 'Ira', 'Irritabilidad', 'Reacciones emocionales injustificadas', 'Dificultades de concentración')),
  DIAGNOSTICO_CONDUCTA_ALIMENTARIA_HUERFANO DIAGNOSTICOALIMENTARIO CHECK(DIAGNOSTICO_CONDUCTA_ALIMENTARIA_HUERFANO IS NULL OR DIAGNOSTICO_CONDUCTA_ALIMENTARIA_HUERFANO IN ('Anorexia nerviosa', 'Bulimia nerviosa', 'Hiperfagia', 'Trastorno por atracón', 'Restricción de la ingesta de alimentos', 'Inanición', 'Pérdida brusca de peso', 'Incremento elevado de peso', 'Distorsión cognitiva respecto al propio cuerpo')),
  DIAGNOSTICO_ESTADO_ANIMO_HUERFANO DIAGNOSTICOANIMO CHECK(DIAGNOSTICO_ESTADO_ANIMO_HUERFANO IS NULL OR DIAGNOSTICO_ESTADO_ANIMO_HUERFANO IN ('Depresión', 'Bipolaridad', 'Desregulación disruptiva', 'Ansioso-depresivo', 'Tristeza recurrente', 'Ansiedad persistente', 'Arrebatos de ira/irritabilidad', 'Frustración', 'Anhedonia', 'Miedo intenso', 'repentino e inesperado', 'Activación psicofisiológica')),
  DIAGNOSTICO_ALTERACIONES_SUENO_HUERFANO DIAGNOSTICOSUENO CHECK(DIAGNOSTICO_ALTERACIONES_SUENO_HUERFANO IS NULL OR DIAGNOSTICO_ALTERACIONES_SUENO_HUERFANO IN ('Insomnio', 'Hipersomnia', 'Bruxismo', 'Parasomnias', 'Síndrome de piernas inquietas')),
  DIAGNOSTICO_TRASTORNOS_APEGO_HUERFANO DIAGNOSTICOAPEGO CHECK(DIAGNOSTICO_TRASTORNOS_APEGO_HUERFANO IS NULL OR DIAGNOSTICO_TRASTORNOS_APEGO_HUERFANO IN ('Ansioso-ambivalente', 'Evitativo', 'Desorganizado', 'Dificultad para crear y mantener vínculos')),
  DIAGNOSTICO_LENGUAJE_HABLA_HUERFANO DIAGNOSTICOLENGUAJE CHECK(DIAGNOSTICO_LENGUAJE_HABLA_HUERFANO IS NULL OR DIAGNOSTICO_LENGUAJE_HABLA_HUERFANO IN ('Mutismo selectivo', 'Retraso simple del lenguaje', 'Dislalias', 'Disfasia')),
  OTRO_DIAGNOSTICO_HUERFANO DIAGNOSTICOOTROS CHECK(OTRO_DIAGNOSTICO_HUERFANO IS NULL OR OTRO_DIAGNOSTICO_HUERFANO IN ('Retraso en el crecimiento', 'Problemas del desarrollo motor', 'Enfermedades y síntomas psicosomáticos', 'Síntomas disociativos', 'Problemas de autoestima y autoconcepto', 'Conductas violentas y/o autodestructivas', 'Déficit de atención e hiperactividad', 'Dislexia', 'Retraso en el aprendizaje y desarrollo cognitivo', 'Disgrafía', 'Alteración del rendimiento y adaptación escolar', 'Absentismo escolar', 'Conductas regresivas en el desarrollo', 'Escasas habilidades sociales', 'Evitación de relaciones sociales')),
  SERVICIOS_ATENCION_VIOLENCIA SERVICIOS CHECK(SERVICIOS_ATENCION_VIOLENCIA IS NULL OR SERVICIOS_ATENCION_VIOLENCIA IN ('Públicos', 'Privados', 'Asociacionismo')),
  SERVICIOS_PSICOLOGICOS SERVICIOS CHECK(SERVICIOS_PSICOLOGICOS IS NULL OR SERVICIOS_PSICOLOGICOS IN ('Públicos', 'Privados', 'Asociacionismo')),
  SERVICIOS_SANITARIOS SERVICIOS CHECK(SERVICIOS_SANITARIOS IS NULL OR SERVICIOS_SANITARIOS IN ('Públicos', 'Privados', 'Asociacionismo')),
  SERVICIOS_EDUCATIVOS SERVICIOS CHECK(SERVICIOS_EDUCATIVOS IS NULL OR SERVICIOS_EDUCATIVOS IN ('Públicos', 'Privados', 'Asociacionismo')),
  SERVICIOS_SOCIALES SERVICIOS CHECK(SERVICIOS_SOCIALES IS NULL OR SERVICIOS_SOCIALES IN ('Públicos', 'Privados', 'Asociacionismo')),
  SERVICIOS_JURIDICOS SERVICIOS CHECK(SERVICIOS_JURIDICOS IS NULL OR SERVICIOS_JURIDICOS IN ('Públicos', 'Privados', 'Asociacionismo')),
  SERVICIOS_ATENCION_DIVERSIDAD SERVICIOS CHECK(SERVICIOS_ATENCION_DIVERSIDAD IS NULL OR SERVICIOS_ATENCION_DIVERSIDAD IN ('Públicos', 'Privados', 'Asociacionismo')),
  AYUDA_RECIBIDA_PENSION_ORFANDAD AYUDARECIBIDASINO CHECK(AYUDA_RECIBIDA_PENSION_ORFANDAD IS NULL OR AYUDA_RECIBIDA_PENSION_ORFANDAD IN ('Ayuda recibida', 'Ayuda NO recibida')),
  CUANTIA_PENSION_ORFANDAD FLOAT,
  TIEMPO_RECEPCION_PENSION_ORFANDAD TIEMPOAYUDA CHECK(TIEMPO_RECEPCION_PENSION_ORFANDAD IS NULL OR TIEMPO_RECEPCION_PENSION_ORFANDAD IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  DURACION_AYUDA_PENSION_ORFANDAD TIEMPOAYUDA CHECK(DURACION_AYUDA_PENSION_ORFANDAD IS NULL OR DURACION_AYUDA_PENSION_ORFANDAD IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  AYUDA_RECIBIDA_DELITOS_VIOLENTOS AYUDARECIBIDASINO CHECK(AYUDA_RECIBIDA_DELITOS_VIOLENTOS IS NULL OR AYUDA_RECIBIDA_DELITOS_VIOLENTOS IN ('Ayuda recibida', 'Ayuda NO recibida')),
  CUANTIA_DELITOS_VIOLENTOS FLOAT,
  TIEMPO_RECEPCION_DELITOS_VIOLENTOS TIEMPOAYUDA CHECK(TIEMPO_RECEPCION_DELITOS_VIOLENTOS IS NULL OR TIEMPO_RECEPCION_DELITOS_VIOLENTOS IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  DURACION_AYUDA_DELITOS_VIOLENTOS TIEMPOAYUDA CHECK(DURACION_AYUDA_DELITOS_VIOLENTOS IS NULL OR DURACION_AYUDA_DELITOS_VIOLENTOS IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  AYUDA_RECIBIDA_ESPECIFICA_CCAA AYUDARECIBIDASINO CHECK(AYUDA_RECIBIDA_ESPECIFICA_CCAA IS NULL OR AYUDA_RECIBIDA_ESPECIFICA_CCAA IN ('Ayuda recibida', 'Ayuda NO recibida')),
  CUANTIA_ESPECIFICA_CCAA FLOAT,
  TIEMPO_RECEPCION_ESPECIFICA_CCAA TIEMPOAYUDA CHECK(TIEMPO_RECEPCION_ESPECIFICA_CCAA IS NULL OR TIEMPO_RECEPCION_ESPECIFICA_CCAA IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  DURACION_AYUDA_ESPECIFICA_CCAA TIEMPOAYUDA CHECK(DURACION_AYUDA_ESPECIFICA_CCAA IS NULL OR DURACION_AYUDA_ESPECIFICA_CCAA IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  AYUDA_RECIBIDA_BECA_SOLEDAD_CAZORLA AYUDARECIBIDASINO CHECK(AYUDA_RECIBIDA_BECA_SOLEDAD_CAZORLA IS NULL OR AYUDA_RECIBIDA_BECA_SOLEDAD_CAZORLA IN ('Ayuda recibida', 'Ayuda NO recibida')),
  CUANTIA_BECA_SOLEDAD_CAZORLA FLOAT,
  TIEMPO_RECEPCION_BECA_SOLEDAD_CAZORLA TIEMPOAYUDA CHECK(TIEMPO_RECEPCION_BECA_SOLEDAD_CAZORLA IS NULL OR TIEMPO_RECEPCION_BECA_SOLEDAD_CAZORLA IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  DURACION_AYUDA_BECA_SOLEDAD_CAZORLA TIEMPOAYUDA CHECK(DURACION_AYUDA_BECA_SOLEDAD_CAZORLA IS NULL OR DURACION_AYUDA_BECA_SOLEDAD_CAZORLA IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  AYUDA_RECIBIDA_EXCENCION_TASAS_ACADEMICAS AYUDARECIBIDASINO CHECK(AYUDA_RECIBIDA_EXCENCION_TASAS_ACADEMICAS IS NULL OR AYUDA_RECIBIDA_EXCENCION_TASAS_ACADEMICAS IN ('Ayuda recibida', 'Ayuda NO recibida')),
  CUANTIA_EXCENCION_TASAS_ACADEMICAS FLOAT,
  TIEMPO_RECEPCION_EXCENCION_TASAS_ACADEMICAS TIEMPOAYUDA CHECK(TIEMPO_RECEPCION_EXCENCION_TASAS_ACADEMICAS IS NULL OR TIEMPO_RECEPCION_EXCENCION_TASAS_ACADEMICAS IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  DURACION_AYUDA_EXCENCION_TASAS_ACADEMICAS TIEMPOAYUDA CHECK(DURACION_AYUDA_EXCENCION_TASAS_ACADEMICAS IS NULL OR DURACION_AYUDA_EXCENCION_TASAS_ACADEMICAS IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  AYUDA_RECIBIDA_BECA_DESPLAZAMIENTO AYUDARECIBIDASINO CHECK(AYUDA_RECIBIDA_BECA_DESPLAZAMIENTO IS NULL OR AYUDA_RECIBIDA_BECA_DESPLAZAMIENTO IN ('Ayuda recibida', 'Ayuda NO recibida')),
  CUANTIA_BECA_DESPLAZAMIENTO FLOAT,
  TIEMPO_RECEPCION_BECA_DESPLAZAMIENTO TIEMPOAYUDA CHECK(TIEMPO_RECEPCION_BECA_DESPLAZAMIENTO IS NULL OR TIEMPO_RECEPCION_BECA_DESPLAZAMIENTO IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  DURACION_AYUDA_BECA_DESPLAZAMIENTO TIEMPOAYUDA CHECK(DURACION_AYUDA_BECA_DESPLAZAMIENTO IS NULL OR DURACION_AYUDA_BECA_DESPLAZAMIENTO IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  AYUDA_RECIBIDA_BECA_COMEDOR AYUDARECIBIDASINO CHECK(AYUDA_RECIBIDA_BECA_COMEDOR IS NULL OR AYUDA_RECIBIDA_BECA_COMEDOR IN ('Ayuda recibida', 'Ayuda NO recibida')),
  CUANTIA_BECA_COMEDOR FLOAT,
  TIEMPO_RECEPCION_BECA_COMEDOR TIEMPOAYUDA CHECK(TIEMPO_RECEPCION_BECA_COMEDOR IS NULL OR TIEMPO_RECEPCION_BECA_COMEDOR IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  DURACION_AYUDA_BECA_COMEDOR TIEMPOAYUDA CHECK(DURACION_AYUDA_BECA_COMEDOR IS NULL OR DURACION_AYUDA_BECA_COMEDOR IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  AYUDA_RECIBIDA_OTRAS AYUDARECIBIDASINO CHECK(AYUDA_RECIBIDA_OTRAS IS NULL OR AYUDA_RECIBIDA_OTRAS IN ('Ayuda recibida', 'Ayuda NO recibida')),
  CUANTIA_OTRAS FLOAT,
  TIEMPO_RECEPCION_OTRAS TIEMPOAYUDA CHECK(TIEMPO_RECEPCION_OTRAS IS NULL OR TIEMPO_RECEPCION_OTRAS IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  DURACION_AYUDA_OTRAS TIEMPOAYUDA CHECK(DURACION_AYUDA_OTRAS IS NULL OR DURACION_AYUDA_OTRAS IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  MEDIDAS_CAUTELARES_PATRIMONIALES BOOLEANOSIMPLE CHECK(MEDIDAS_CAUTELARES_PATRIMONIALES IS NULL OR MEDIDAS_CAUTELARES_PATRIMONIALES IN ('Si', 'No')),
  INDEMNIZACION_RESPONSABILIDAD_CIVIL BOOLEANOSIMPLE CHECK(INDEMNIZACION_RESPONSABILIDAD_CIVIL IS NULL OR INDEMNIZACION_RESPONSABILIDAD_CIVIL IN ('Si', 'No')),
  CUANTIA_INDEMNIZACION_RESPONSABILIDAD_CIVIL FLOAT,
  EXENCION_IMPUESTO_PATRIMONIAL BOOLEANOSIMPLE CHECK(EXENCION_IMPUESTO_PATRIMONIAL IS NULL OR EXENCION_IMPUESTO_PATRIMONIAL IN ('Si', 'No')),
  PRESTACION_ALIMENTOS BOOLEANOSIMPLE CHECK(PRESTACION_ALIMENTOS IS NULL OR PRESTACION_ALIMENTOS IN ('Si', 'No')),
  ACCESO_HERENCIA BOOLEANOSIMPLE CHECK(ACCESO_HERENCIA IS NULL OR ACCESO_HERENCIA IN ('Si', 'No')),
  TIEMPO_RECIBIR_HERENCIA TIEMPOAYUDA CHECK(TIEMPO_RECIBIR_HERENCIA IS NULL OR TIEMPO_RECIBIR_HERENCIA IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  ACCESO_CUENTAS_BANCARIAS BOOLEANOSIMPLE CHECK(ACCESO_CUENTAS_BANCARIAS IS NULL OR ACCESO_CUENTAS_BANCARIAS IN ('Si', 'No')),
  TIEMPO_RECIBIR_CUENTAS_BANCARIAS TIEMPOAYUDA CHECK(TIEMPO_RECIBIR_CUENTAS_BANCARIAS IS NULL OR TIEMPO_RECIBIR_CUENTAS_BANCARIAS IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  REGIMEN_VISITAS_COMUNICACION BOOLEANOSIMPLE CHECK(REGIMEN_VISITAS_COMUNICACION IS NULL OR REGIMEN_VISITAS_COMUNICACION IN ('Si', 'No')),
  PERIODICIDAD_VISITAS_COMUNICACION PERIODICIDAD CHECK(PERIODICIDAD_VISITAS_COMUNICACION IS NULL OR PERIODICIDAD_VISITAS_COMUNICACION IN ('Diaria', 'Semanal', 'Quincenal', 'Mensual', 'Bimensual', 'Trimestral', 'Semestral', 'Anual', 'Fines de semana', 'Vacaciones escolares', 'Días alternos')),
  GUARDA_CUSTODIA BOOLEANOSIMPLE CHECK(GUARDA_CUSTODIA IS NULL OR GUARDA_CUSTODIA IN ('Si', 'No')),
  QUIEN_GUARDA_CUSTODIA STRING,
  TUTELA BOOLEANOSIMPLE CHECK(TUTELA IS NULL OR TUTELA IN ('Si', 'No')),
  QUIEN_TUTELA STRING,
  CAMBIO_APELLIDOS BOOLEANOSIMPLE CHECK(CAMBIO_APELLIDOS IS NULL OR CAMBIO_APELLIDOS IN ('Si', 'No')),
  PRIVACION_LIBERTAD_FEMINICIDA BOOLEANOSIMPLE CHECK(PRIVACION_LIBERTAD_FEMINICIDA IS NULL OR PRIVACION_LIBERTAD_FEMINICIDA IN ('Si', 'No')),
  PRIVACION_PATRIA_POTESTAD_FEMINICIDA BOOLEANOSIMPLE CHECK(PRIVACION_PATRIA_POTESTAD_FEMINICIDA IS NULL OR PRIVACION_PATRIA_POTESTAD_FEMINICIDA IN ('Si', 'No')),
  INHABILITACION_PATRIA_POTESTAD_FEMINICIDA BOOLEANOSIMPLE CHECK(INHABILITACION_PATRIA_POTESTAD_FEMINICIDA IS NULL OR INHABILITACION_PATRIA_POTESTAD_FEMINICIDA IN ('Si', 'No')),
  PROHIBICION_LUGAR_DELITO_RESIDENCIA_VICTIMA BOOLEANOSIMPLE CHECK(PROHIBICION_LUGAR_DELITO_RESIDENCIA_VICTIMA IS NULL OR PROHIBICION_LUGAR_DELITO_RESIDENCIA_VICTIMA IN ('Si', 'No')),
  DURACION_PROHIBICION_LUGAR_DELITO_RESIDENCIA_VICTIMA TIEMPOAYUDA CHECK(DURACION_PROHIBICION_LUGAR_DELITO_RESIDENCIA_VICTIMA IS NULL OR DURACION_PROHIBICION_LUGAR_DELITO_RESIDENCIA_VICTIMA IN ('1 mes', '2 meses', '3 meses', '4 meses', '5 meses', '6 a 9 meses', '9 a 12 meses', '+1 año', '+2 años', '+3 años')),
  PROHIBICION_COMUNICACION_HIJOS_MENORES BOOLEANOSIMPLE CHECK(PROHIBICION_COMUNICACION_HIJOS_MENORES IS NULL OR PROHIBICION_COMUNICACION_HIJOS_MENORES IN ('Si', 'No')),
  PROHIBICION_APROXIMACION_HIJOS_MENORES BOOLEANOSIMPLE CHECK(PROHIBICION_APROXIMACION_HIJOS_MENORES IS NULL OR PROHIBICION_APROXIMACION_HIJOS_MENORES IN ('Si', 'No')),
  RETIRADA_ARMAS BOOLEANOSIMPLE CHECK(RETIRADA_ARMAS IS NULL OR RETIRADA_ARMAS IN ('Si', 'No')),
  OTRAS_MEDIDAS_PROTECCION STRING,
  SITUACION_FEMINICIDA_TRAS_FEMINICIDIO SITUACIONFEMINICIDAINMEDIATA CHECK(SITUACION_FEMINICIDA_TRAS_FEMINICIDIO IS NULL OR SITUACION_FEMINICIDA_TRAS_FEMINICIDIO IN ('Suicidio', 'Fugado', 'Detención policial y adopción de medidas cautelares penales')),
  SITUACION_ACTUAL_FEMINICIDA SITUACIONFEMINICIDAACTUALIDAD CHECK(SITUACION_ACTUAL_FEMINICIDA IS NULL OR SITUACION_ACTUAL_FEMINICIDA IN ('Fugado', 'Pendiente de juicio en prisión provisional', 'Pendiente de juicio en libertad provisional', 'Condenado y cumpliendo condena de prisión permanente revisable', 'Condenado y cumpliendo condena de prisión', 'Condenado y clasificado en tercer grado penitenciario', 'Condenado y en libertad condicional', 'Condenado', 'pero ya en libertad por cumplimiento de la pena', 'En libertad con prohibiciones de aproximación y comunicación y residencia', 'Absuelto del delito', 'Muerto')),
  PERMISOS_SALIDA_FEMINICIDA BOOLEANOSIMPLE CHECK(PERMISOS_SALIDA_FEMINICIDA IS NULL OR PERMISOS_SALIDA_FEMINICIDA IN ('Si', 'No')),
  COMUNICACION_FAMILIA_PERMISOS_FEMINICIDA BOOLEANOSIMPLE CHECK(COMUNICACION_FAMILIA_PERMISOS_FEMINICIDA IS NULL OR COMUNICACION_FAMILIA_PERMISOS_FEMINICIDA IN ('Si', 'No'))
);

