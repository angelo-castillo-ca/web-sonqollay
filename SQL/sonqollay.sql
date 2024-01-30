DROP DATABASE IF EXISTS sonqollay;
CREATE DATABASE IF NOT EXISTS sonqollay;
USE sonqollay;
CREATE TABLE liderazgo(
      id MEDIUMINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      pregunta varchar(300) not null,
      respuesta1c varchar(300) not null,
      respuesta2 varchar(300) not null,
      respuesta3 varchar(300) not null,
      respuesta4 varchar(300) not null
);
CREATE TABLE resiliencia(
      id MEDIUMINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      pregunta varchar(300) not null,
      respuesta1c varchar(300) not null,
      respuesta2 varchar(300) not null,
      respuesta3 varchar(300) not null,
      respuesta4 varchar(300) not null
);
CREATE TABLE gestion_tiempo(
      id MEDIUMINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      pregunta varchar(300) not null,
      respuesta1c varchar(300) not null,
      respuesta2 varchar(300) not null,
      respuesta3 varchar(300) not null,
      respuesta4 varchar(300) not null
);
CREATE TABLE empatia(
      id MEDIUMINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      pregunta varchar(300) not null,
      respuesta1c varchar(300) not null,
      respuesta2 varchar(300) not null,
      respuesta3 varchar(300) not null,
      respuesta4 varchar(300) not null
);
CREATE TABLE usuario(
    id MEDIUMINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombres varchar(300) not null,
    apellidos varchar(300) not null,
    correo varchar(300) not null,
    passwd varchar(300) not null
);
INSERT INTO usuario(nombres, apellidos, correo, passwd) VALUES
    ('sonqollay','sonqollay','sonqollay','sonqollay');

INSERT INTO liderazgo(pregunta, respuesta1c, respuesta2, respuesta3, respuesta4) VALUES
    ('Estás a cargo de un proyecto que ha enfrentado desafíos inesperados y retrasos. Tu equipo está desanimado y el plazo se está acercando. ¿Qué harías? ','Abandonar el proyecto y empezar de nuevo.','Comunicarte con el equipo, identificar soluciones y ajustar el plan.','Culpar a otros por los problemas y buscar nuevas contrataciones.','Ignorar los problemas y esperar que se resuelvan por sí mismos.'),
    ('Has perdido tu empleo y te sientes desesperado. ¿Cuál sería una estrategia resiliente para enfrentar esta situación?','Aislarte y evitar hablar sobre la pérdida del empleo.','Buscar apoyo de amigos, familiares o redes profesionales y explorar nuevas oportunidades.','Decidir que nunca más buscarás empleo debido a la situación económica.','Culpar a otros por la pérdida del empleo y renunciar a buscar trabajo.'),
    ('Estás a cargo de un equipo que está experimentando conflictos y falta de comunicación. ¿Cómo manejarías esta situación de manera resiliente?','Ignorar los problemas y esperar a que se resuelvan por sí mismos.','Responsabilizar a un miembro del equipo por los conflictos y tomar medidas punitivas.','Facilitar una reunión para que los miembros del equipo expresen sus preocupaciones y trabajar juntos en soluciones.','Dejar el equipo y buscar uno nuevo sin conflictos.'),
    ('Has enfrentado un fracaso importante en un proyecto en el que has invertido mucho tiempo y esfuerzo. ¿Qué enfoque resiliente tomarías?','Rendirte y abandonar la idea de intentar algo similar en el futuro.','Reflexionar sobre las lecciones aprendidas, ajustar tus estrategias y volver a intentarlo.','Culpar a factores externos por el fracaso y evitar proyectos similares
     en el futuro.','Ocultar el fracaso y no hablar sobre él con nadie.'),
    ('Estás experimentando altos niveles de estrés debido a una carga de trabajo abrumadora. ¿Cómo manejarías esta situación de manera resiliente?','Ignorar el estrés y continuar trabajando sin tomar medidas.','Hablar con amigos o familiares sobre el estrés y buscar consejo.','Tomar medidas para reducir el estrés, como practicar técnicas de relajación y establecer límites en tu carga de trabajo.','Culpar a otros por tu estrés y esperar que desaparezca por sí solo.'),
    ('Has sufrido una pérdida personal significativa y te sientes abrumado por la tristeza. ¿Cómo afrontarías esta situación de manera resiliente?','Evitar hablar sobre la pérdida y distraerte con otras actividades.','Buscar apoyo emocional de amigos, familiares o profesionales de la salud mental.','Culparte a ti mismo por la pérdida y aislarte de los demás.','Ignorar tus sentimientos y continuar como si nada hubiera pasado.'),
    ('Te enfrentas a críticas negativas y comentarios despectivos sobre tu trabajo. ¿Cómo manejarías esta situación de manera resiliente?','Creer en las críticas y dudar de tus habilidades.','Defender tu trabajo de manera agresiva y confrontar a los críticos.','Evaluar objetivamente las críticas, identificar oportunidades de mejora y mantener una actitud positiva.','Abandonar tus esfuerzos y dejar de trabajar en el proyecto.'),
    ('Te enfrentas a una serie de fracasos en tus intentos de lograr una meta importante. ¿Cuál sería un enfoque resiliente para seguir adelante?','Concluir que no estás destinado a alcanzar esa meta y abandonarla por completo.','Reflexionar sobre los fracasos, identificar áreas de mejora y ajustar tu enfoque.','Culpar a factores externos por los fracasos y evitar la meta en el futuro.','Ocultar los fracasos y no hablar sobre ellos con nadie.'),
    ('Te enfrentas a dificultades financieras y luchas por llegar a fin de mes. ¿Cómo manejarías esta situación de manera resiliente?','Ignorar las dificultades financieras y gastar más dinero.','Buscar ayuda financiera, como asesoramiento crediticio o asistencia gubernamental.','Culparte a ti mismo por la situación y aislarte de los demás.','Gastar aún más dinero para tratar de resolver rápidamente los problemas financieros.'),
    ('Estás a cargo de un equipo que ha experimentado un fracaso importante en un proyecto.
     Los miembros del equipo están desmotivados. ¿Cómo abordarías esta situación de manera resiliente?','Culpar a un miembro del equipo por el fracaso y tomar medidas punitivas.','Ignorar el fracaso y seguir adelante sin analizarlo.','Reunir al equipo, analizar las causas del fracaso y trabajar juntos en soluciones para futuros proyectos.','Dejar el equipo y formar uno nuevo sin problemas.'),
    ('Después de enfrentar una serie de rechazos en solicitudes de empleo, te sientes desalentado y sin esperanzas. ¿Cuál es una respuesta resiliente?','Rendirte y dejar de buscar empleo.','Ignorar tus sentimientos y seguir solicitando empleo sin descanso.','Tomar un tiempo para reflexionar sobre tus habilidades y objetivos profesionales y buscar oportunidades alternativas.','Culparte a ti mismo y sentirte derrotado.'),
    ('Estás estudiando para un examen importante, pero enfrentas muchas distracciones en casa. ¿Qué acción resiliente tomarías?','Ignorar las distracciones y seguir estudiando a pesar de
     todo.','Dejar de estudiar y posponer el examen.','Buscar un lugar más tranquilo y libre de distracciones para estudiar.','Rendirte y aceptar que no podrás concentrarte en casa.'),
    ('Estás trabajando en un proyecto en equipo y uno de los miembros no está cumpliendo con
     sus responsabilidades, lo que afecta el progreso del proyecto. ¿Cómo manejarías esta situación de manera resiliente?','Ignorar el problema y asumir las responsabilidades del miembro del equipo.','Confrontar agresivamente al miembro del equipo y exigir que cumpla con sus tareas.','Hablar en privado con el miembro del equipo para entender sus desafíos y ofrecer ayuda.','Abandonar el proyecto debido a la falta de cooperación del
    miembro del equipo.'),
    ('Estás a cargo de liderar un equipo durante una crisis inesperada que afecta la productividad. ¿Cuál es una respuesta resiliente?','Culpar a los miembros del equipo por la situación y despedir a los menos productivos.','Ignorar la crisis y seguir con los procedimientos habituales.','Adaptar rápidamente los objetivos y procedimientos para enfrentar la
    crisis y mantener al equipo informado y motivado.','Renunciar a tu posición de liderazgo por temor a la responsabilidad.'),
    ('Has cometido un error importante en el trabajo que ha tenido consecuencias negativas. ¿Qué acción resiliente tomarías?','Culparte a ti mismo y evitar enfrentar las consecuencias.','Ignorar el error y esperar que se resuelva solo.','Aceptar la responsabilidad, aprender de la experiencia y trabajar para remediar las consecuencias.','Abandonar el trabajo por temor a más errores.'),
    ('Has estado trabajando en un proyecto personal durante mucho tiempo y no has logrado
     los resultados esperados. ¿Qué estrategia resiliente adoptarías?','Abandonar el proyecto y considerarlo un fracaso.','Ignorar las dificultades y seguir adelante sin hacer cambios.','Reevaluar tus objetivos y estrategias, y hacer ajustes para mejorar el rendimiento.','Compararte con otros que han tenido éxito en proyectos similares y
     sentirte desalentado.'),
    ('Has sufrido una pérdida importante en tu vida personal y te sientes abrumado por la tristeza y el dolor. ¿Cómo afrontarías esta situación de manera resiliente?','Evitar enfrentar las emociones y distraerte con actividades superficiales.','Negar el dolor y pretender que todo está bien.','Buscar apoyo emocional de amigos, familiares o profesionales y permitirte sentir y procesar tus emociones.','Aislarte de los demás para evitar mostrar tus vulnerabilidades.'),
    ('Estás enfrentando un período de alta presión y estrés en el trabajo y te sientes agotado. ¿Cómo cuidarías de ti mismo de manera resiliente?','Ignorar el estrés y seguir trabajando sin descanso.','Dejar de lado todas las responsabilidades y tomar un tiempo indefinido libre.','Priorizar el autocuidado al establecer límites, tomar descansos y practicar técnicas de manejo del estrés.','Culparte a ti mismo por no poder manejar la presión.'),
    ('Has experimentado una serie de fracasos en proyectos personales y te sientes desmotivado. ¿Cuál es una respuesta resiliente?','Ignorar los fracasos y tratar de ocultarlos.','Rendirte por completo y evitar intentar nuevos proyectos.','Reflexionar sobre las lecciones aprendidas de los fracasos y utilizarlas
     para informar futuros proyectos.','Compararte constantemente con otros que han tenido éxito y sentirte envidia.'),
    ('Te enfrentas a críticas negativas de tus colegas en el trabajo que afectan tu autoestima. ¿Cómo manejarías esta situación de manera resiliente?','Ignorar las críticas y pretender que no te afectan.','Tomar todas las críticas de manera personal y sentirte desalentado.','Reflexionar sobre las críticas constructivas y utilizarlas para mejorar tu desempeño.','Culparte a ti mismo por no ser lo suficientemente competente.'),
    ('Te enfrentas a un fracaso en un proyecto que habías invertido mucho tiempo y esfuerzo. ¿Cómo reaccionarías de manera resiliente?','Culparte a ti mismo por no haber sido lo suficientemente
     competente.','Ignorar el fracaso y pretender que nunca ocurrió.','Reflexionar sobre las razones detrás del fracaso, aprender de la experiencia y planificar un nuevo enfoque.','Abandonar por completo cualquier intento futuro de proyectos
    similares.'),
    ('Te enfrentas a cambios inesperados en tu lugar de trabajo que afectan tus tareas y responsabilidades. ¿Cómo afrontarías esta situación de manera resiliente?','Ignorar los cambios y continuar con los procedimientos
     habituales.','Resistir activamente los cambios y rechazar adaptarte a nuevas
     circunstancias.','Adaptarte a los cambios, buscar oportunidades en medio de la
     incertidumbre y aprender nuevas habilidades si es necesario.','Renunciar al trabajo debido a la incomodidad causada por los
     cambios.'),
    ('Has perdido a un ser querido y te sientes abrumado por la tristeza. ¿Cómo te cuidarías de manera resiliente?','Evitar enfrentar las emociones y distraerte con actividades superficiales.','Negar el dolor y pretender que todo está bien.','Buscar apoyo emocional de amigos, familiares o profesionales y
     permitirte sentir y procesar tus emociones.','Aislarte de los demás para evitar mostrar tus vulnerabilidades.'),
    ('Estás enfrentando dificultades financieras y luchas por mantener tus gastos bajo control. ¿Cómo manejarías esta situación de manera resiliente?','Ignorar tus problemas financieros y seguir gastando sin
     restricciones.','Entrar en pánico y tomar decisiones impulsivas para resolver la situación a corto plazo.','Evaluar tus gastos, crear un presupuesto realista y buscar oportunidades para aumentar tus ingresos.','Dejar de intentar resolver tus problemas financieros y aceptar la situación.'),
    ('Estás trabajando en un proyecto que ha experimentado varios obstáculos y retrasos. ¿Cómo te mantendrías resiliente y motivado?','Rendirte y abandonar el proyecto debido a los obstáculos.','Ignorar los obstáculos y seguir adelante sin abordar los problemas.','Enfrentar los obstáculos uno por uno, buscar soluciones creativas
    y mantener una mentalidad positiva.','Culparte a ti mismo por los retrasos y sentirte derrotado.'),
    ('Estás experimentando una serie de fracasos en tus relaciones personales y te sientes desanimado. ¿Cómo responderías de manera resiliente?','Ignorar los fracasos y pretender que no te importan.','Aislarte de los demás para evitar futuros fracasos.','Reflexionar sobre las lecciones aprendidas de las relaciones pasadas
    y trabajar en mejorar tus habilidades de comunicación y empatía.','Culparte a ti mismo y sentirte incapaz de establecer relaciones
     exitosas.'),
    ('Te enfrentas a críticas y comentarios negativos en línea que afectan tu autoestima. ¿Cómo manejarías esta situación de manera resiliente?','Ignorar los comentarios y evitar las redes sociales por completo.','Tomar cada comentario de manera personal y sentirte derrotado.','Evaluar los comentarios de manera objetiva y filtrar los útiles de los
     destructivos.','Rendirte a la presión y eliminar tus perfiles en línea.'),
    ('Estás trabajando en un proyecto que requiere un alto nivel de creatividad, pero te sientes bloqueado y sin inspiración. ¿Qué enfoque resiliente tomarías?','Ignorar el bloqueo creativo y esperar a que desaparezca por sí solo.','Rendirte en el proyecto y considerarlo una pérdida total.','Tomar un descanso, explorar diferentes fuentes de inspiración y probar nuevas perspectivas.','Culparte a ti mismo por la falta de creatividad y sentirte frustrado.'),
    ('Estás trabajando en un proyecto que enfrenta retrasos debido a circunstancias fuera
     de tu control. ¿Cómo manejarías esta situación de manera resiliente?','Culparte a ti mismo por los retrasos y sentirte derrotado.','Ignorar los retrasos y continuar trabajando sin considerar los obstáculos.','Adaptar el plan y los plazos según las circunstancias cambiantes
     y comunicar las actualizaciones al equipo.','Abandonar el proyecto debido a la frustración por los retrasos.'),
    ('Te enfrentas a una serie de cambios inesperados en tu vida personal que te generan
    incertidumbre. ¿Qué estrategia resiliente adoptarías?','Ignorar los cambios y continuar con la rutina habitual.','Resistir activamente los cambios y negarte a adaptarte a nuevas
     circunstancias.','Practicar la aceptación y la adaptación gradual a los cambios mientras
    buscas oportunidades en medio de la incertidumbre.','Dejar de intentar adaptarte a los cambios y aislarte de los demás.'),
    ('Después de un evento traumático, te sientes abrumado por emociones negativas.
    ¿Cuál es una respuesta resiliente?','Ignorar las emociones y seguir adelante como si nada hubiera pasado.','Rendirte ante las emociones y aislarte de los demás.','Aceptar tus emociones, buscar apoyo y buscar formas saludables
    de afrontarlas.','Culpar a otras personas por tus emociones.'),
    ('Te enfrentas a múltiples desafíos en el trabajo y en tu vida personal al mismo tiempo.
    ¿Qué enfoque refleja una actitud resiliente?','Dejar de lado tus responsabilidades para evitar el estrés.','Ignorar los desafíos y esperar a que desaparezcan por sí mismos.','Priorizar y desarrollar un plan para abordar cada desafío de manera organizada.','Culpar a factores externos por los desafíos que enfrentas.'),
    ('Has perdido tu empleo debido a circunstancias fuera de tu control. ¿Qué enfoque refleja una actitud resiliente?','Culpar a otras personas por la pérdida y sentirte derrotado.','Ignorar la situación y esperar a que cambie por sí sola.','Evaluar tus habilidades, buscar nuevas oportunidades y adaptarte
     a la situación.','Aislarte de los demás y no buscar soluciones.'),
    ('Estás a punto de presentar un proyecto importante y te das cuenta de que cometiste un error crucial. ¿Cuál es una respuesta resiliente?','Ignorar el error y presentar el proyecto como está.','Dejar de lado el proyecto y no presentarlo en absoluto.','Reconocer el error, buscar soluciones y tomar medidas para corregirlo.','Culpar a otros por el error y no asumir responsabilidad.'),
    ('Te enfrentas a críticas y comentarios negativos sobre tu trabajo. ¿Cuál es una respuesta resiliente?','Ignorar las críticas y evitar cualquier interacción relacionada
     con el trabajo.','Tomar todas las críticas de manera personal y sentirte desanimado.','Evaluar las críticas de manera objetiva y considerar si hay oportunidades de mejora.','Culpar a otros por las críticas y rechazar cualquier retroalimentación.'),
    ('Te has enfrentado a una serie de fracasos en tus intentos por alcanzar una meta
    importante. ¿Cuál es una respuesta resiliente?','Rendirte y asumir que la meta es inalcanzable.','Ignorar los fracasos y continuar sin hacer cambios en tu enfoque.','Reflexionar sobre los fracasos, aprender de ellos y ajustar tu estrategia.','Culpar a factores externos por los fracasos y sentirte desanimado.'),
    ('Te enfrentas a una serie de obstáculos en un proyecto importante. ¿Cuál es una respuesta resiliente?','Ignorar los obstáculos y esperar a que se resuelvan por sí solos.','Rendirte ante los obstáculos y abandonar el proyecto.','Buscar soluciones creativas y persistir a pesar de los obstáculos.','Culpar a otros por los obstáculos y buscar ayuda externa.'),
    ('Estás liderando un equipo en un proyecto y enfrentas desafíos de comunicación y colaboración. ¿Cuál es una respuesta resiliente?','Culpar a los miembros del equipo por los desafíos y abandonar el proyecto.','Ignorar los problemas de comunicación y esperar a que se resuelvan
     por sí mismos.','Abordar abiertamente los desafíos de comunicación, fomentar la colaboración y buscar soluciones.','Delegar la responsabilidad de resolver los desafíos a otro miembro
    del equipo.'),
    ('Estás lidiando con una crisis financiera que afecta tus ahorros y bienestar económico.
    ¿Cuál es una respuesta resiliente?','Gastar más dinero para sentirte mejor temporalmente.','Ignorar la crisis financiera y esperar a que mejore por sí sola.','Buscar asesoramiento financiero y desarrollar un plan realista para manejar la crisis.','Culpar a factores externos por la crisis financiera y sentirte desesperado.'),
    ('Has perdido a un ser querido y estás experimentando un profundo dolor emocional.
    ¿Cuál es una respuesta resiliente?','Evitar completamente cualquier emoción relacionada con
    la pérdida.','Aislarte de los demás y no buscar apoyo emocional.','Aceptar tus emociones, buscar apoyo y buscar formas saludables de
    afrontar la pérdida.','Culpar a otros por la pérdida y cerrarte emocionalmente.'),
    ('Te enfrentas a críticas negativas y comentarios despectivos en línea sobre tu trabajo. ¿Cuál es una respuesta resiliente?','Ignorar completamente los comentarios y evitar las plataformas en línea.','Tomar todos los comentarios de manera personal y sentirte abrumado.','Evaluar las críticas de manera objetiva y decidir si alguna tiene mérito constructivo.','Culpar a otros por los comentarios y retirarte de la exposición en línea.'),
    ('Estás experimentando una serie de reveses en tu búsqueda de empleo. ¿Cuál es una
    respuesta resiliente?','Rendirte por completo y dejar de buscar empleo.','Ignorar los reveses y continuar aplicando a trabajos sin hacer ajustes.','Reflexionar sobre los reveses, identificar áreas de mejora y ajustar tu
     enfoque.','Culpar a factores externos por los reveses y sentirte desanimado.'),
    ('Te enfrentas a un conflicto importante con un amigo cercano. ¿Qué enfoque demuestra resiliencia?','Ignorar el conflicto y evitar hablar del tema.','Cortar por completo la relación con tu amigo.','Comunicarte abierta y honestamente con tu amigo para resolver el conflicto.','Culpar a tu amigo por el conflicto y no buscar una solución.'),
    ('Estás lidiando con una enfermedad crónica que afecta tu calidad de vida. ¿Cuál es una respuesta resiliente?','Ignorar la enfermedad y no buscar tratamiento.','Dejar que la enfermedad te impida participar en actividades que
    disfrutas.','Buscar tratamiento médico y ajustar tu estilo de vida para manejar
    la enfermedad.','Culpar a factores externos por la enfermedad y no hacer nada al respecto.'),
    ('Te enfrentas a dificultades financieras debido a la pérdida de empleo. ¿Cuál es una respuesta resiliente?','Gastar todo el dinero restante en compras impulsivas.','Ignorar la situación financiera y esperar a que mejore sin acción.','Desarrollar un presupuesto, buscar asesoramiento financiero y manejar gastos de manera responsable.','Culpar a otros por la situación financiera y sentirte desesperado.'),
    ('Estás a cargo de un proyecto que enfrenta desafíos imprevistos. ¿Qué enfoque demuestra resiliencia?','Culpar a los miembros del equipo por los desafíos y abandonar el proyecto.','Ignorar los desafíos y esperar a que desaparezcan por sí mismos.','Colaborar con el equipo para identificar soluciones y superar los desafíos juntos.','Delegar la responsabilidad de resolver los desafíos a otro miembro del equipo.'),
    ('Te enfrentas a una serie de fracasos en tus intentos por alcanzar una meta
    importante. ¿Cuál es una respuesta resiliente?','Rendirte y asumir que la meta es inalcanzable.','Ignorar los fracasos y continuar sin cambios en tu enfoque.','Reflexionar sobre los fracasos, aprender de ellos y ajustar tu estrategia.','Culpar a factores externos por los fracasos y sentirte desanimado.'),
    ('Te enfrentas a una serie de obstáculos mientras intentas completar un proyecto importante. ¿Cuál es una respuesta resiliente?','Abandonar el proyecto por completo debido a los obstáculos.','Ignorar los obstáculos y continuar sin hacer cambios.','Buscar soluciones creativas y persistir a pesar de los obstáculos.','Culpar a otros por los obstáculos que enfrentas.'),
    ('Te enfrentas a una crisis de salud que requiere un cambio significativo en tu estilo de vida. ¿Cuál es una respuesta resiliente?','Ignorar la crisis de salud y continuar con tus hábitos actuales.','Sentirte abrumado por la situación y no hacer ningún cambio.','Aceptar la situación, buscar apoyo médico y hacer los ajustes
    necesarios en tu estilo de vida.','Culpar a factores externos por la crisis de salud y no tomar ninguna
     acción.'),
    ('Te enfrentas a una serie de críticas negativas en tu desempeño laboral. ¿Cuál es una
    respuesta resiliente?','Ignorar por completo las críticas y continuar como si nada
    hubiera pasado.','Dejar que las críticas afecten tu autoestima y tu confianza.','Evaluar las críticas de manera objetiva y utilizarlas para mejorar tu
    rendimiento.','Culpar a otros por las críticas y rechazar cualquier responsabilidad.'),
    ('Te encuentras en una situación laboral insatisfactoria. ¿Cuál es una respuesta resiliente?','Ignorar tus sentimientos de insatisfacción y continuar como
    si nada hubiera pasado.','Renunciar sin tener un plan alternativo en su lugar.','Evaluar tus opciones, buscar asesoramiento y tomar medidas para explorar nuevas oportunidades.','Culpar a otros por la situación y resignarte a permanecer en ella.'),
    ('Te has enfrentado a una serie de fracasos en tus intentos de establecer tu propio negocio. ¿Cuál es una respuesta resiliente?','Rendirte por completo y abandonar la idea de tener tu propio negocio.','Ignorar los fracasos y continuar con el mismo enfoque sin cambios.','Reflexionar sobre los fracasos, aprender de ellos y ajustar tu estrategia
    empresarial.','Culpar a factores externos por los fracasos y sentirte derrotado.'),
    ('Te encuentras en una relación personal difícil y llena de conflictos. ¿Cuál es una respuesta resiliente?','Ignorar los problemas y continuar con la relación como está.','Terminar la relación abruptamente sin intentar resolver los conflictos.','Abordar abiertamente los problemas, buscar comunicación y trabajar
    en conjunto para mejorar la relación.','Culpar a la otra persona por los problemas y retirarte emocionalmente.'),
    ('Has experimentado una serie de rechazos en tus solicitudes de admisión a programas educativos. ¿Cuál es una respuesta resiliente?','Rendirte en la búsqueda de educación y no aplicar a más
    programas.','Ignorar los rechazos y continuar aplicando a los mismos programas.','Reflexionar sobre los rechazos, identificar áreas de mejora y explorar
    otras opciones educativas.','Culpar a factores externos por los rechazos y sentirte desesperado.'),
    ('Te enfrentas a una serie de obstáculos mientras intentas mejorar tus habilidades en un área específica. ¿Cuál es una respuesta resiliente?','Abandonar por completo el objetivo de mejorar tus habilidades.','Ignorar los obstáculos y esperar que desaparezcan por sí solos.','Buscar soluciones creativas y persistir a pesar de los obstáculos en tu camino.','Culpar a otros por los obstáculos que enfrentas y rendirte.'),
    ('Te enfrentas a una serie de desafíos en tu vida personal y profesional al mismo tiempo. ¿Cuál es una respuesta resiliente?','Ignorar los desafíos y esperar que desaparezcan por sí solos.','Sentirte abrumado por los desafíos y rendirte ante ellos.','Priorizar y desarrollar un plan para abordar cada desafío de manera organizada.','Culpar a factores externos por los desafíos y sentirte desesperado.'),
    ('Estás experimentando dificultades financieras debido a una inversión que no salió como
    se esperaba. ¿Cuál es una respuesta resiliente?','Ignorar la situación financiera y esperar a que cambie por sí sola.','Sentirte desesperado y abandonar por completo cualquier inversión
    futura.','Evaluar la situación financiera, aprender de la experiencia y ajustar tu
    enfoque en futuras inversiones.','Culpar a otros por la inversión fallida y sentirte frustrado.'),
    ('Estás liderando un equipo en un proyecto que ha enfrentado una serie de reveses. ¿Cuál es una respuesta resiliente?','Culpar a los miembros del equipo por los reveses y abandonar el proyecto.','Ignorar los reveses y esperar a que se resuelvan por sí mismos.','Colaborar con el equipo para identificar soluciones y persistir a pesar de los reveses.','Delegar la responsabilidad de superar los reveses a otro miembro
    del equipo.'),
    ('Te enfrentas a una serie de críticas negativas en tu desempeño laboral. ¿Cuál es una
    respuesta resiliente?','Ignorar por completo las críticas y continuar como si nada hubiera pasado.','Dejar que las críticas afecten tu autoestima y confianza en ti mismo.','Evaluar las críticas de manera objetiva y utilizarlas para mejorar tu rendimiento y habilidades.','Culpar a otros por las críticas y rechazar cualquier responsabilidad.'),
    ('Te enfrentas a un conflicto con un colega en el trabajo. ¿Cuál es una respuesta resiliente?','Ignorar el conflicto y evitar cualquier interacción con el colega.','Reactuar emocionalmente y hacer comentarios negativos sobre el colega.','Abordar el conflicto de manera abierta y respetuosa, buscando una
    solución constructiva.','Culpar al colega por el conflicto y no tomar medidas para resolverlo.'),
    ('Te enfrentas a una serie de obstáculos en la realización de un proyecto creativo.
    ¿Cuál es una respuesta resiliente?','Abandonar el proyecto por completo debido a los obstáculos.','Ignorar los obstáculos y continuar sin hacer ajustes en tu enfoque creativo.','Buscar soluciones creativas y persistir a pesar de los obstáculos en tu camino.','Culpar a otros por los obstáculos que enfrentas y sentirte desesperado.'),
    ('Te encuentras en una relación personal en la que enfrentas desafíos y desacuerdos
    constantes. ¿Cuál es una respuesta resiliente?','Ignorar los desafíos y esperar que la relación mejore
    por sí sola.','Terminar la relación sin intentar resolver los desacuerdos.','Abordar los desafíos de manera abierta y buscar comunicación y compromiso para mejorar la relación.','Culpar a la otra persona por los desafíos y retirarte emocionalmente.'),
    ('Te enfrentas a una serie de fracasos en tus intentos por lograr un objetivo académico importante. ¿Cuál es una respuesta resiliente?','Rendirte por completo y abandonar la búsqueda del objetivo académico.','Ignorar los fracasos y continuar con el mismo enfoque sin cambios.','Reflexionar sobre los fracasos, aprender de ellos y ajustar tu enfoque académico.','Culpar a factores externos por los fracasos y sentirte desesperado.'),
    ('Estás liderando un proyecto en el trabajo y te enfrentas a dificultades en la colaboración
     con tu equipo. ¿Cuál es una respuesta resiliente?','Culpar a los miembros del equipo por las dificultades y abandonar el proyecto.','Ignorar los problemas de colaboración y esperar a que desaparezcan
    por sí solos.','Abordar abiertamente las dificultades de colaboración, fomentar la
    comunicación y trabajar juntos para superarlas.','Delegar la responsabilidad de resolver los problemas de colaboración
    a otro miembro del equipo.'),
    ('Te enfrentas a una serie de rechazos en tus intentos de establecer conexiones sociales.
    ¿Cuál es una respuesta resiliente?','Evitar por completo las situaciones sociales para evitar el rechazo.','Ignorar los rechazos y continuar intentando sin hacer cambios.','Reflexionar sobre los rechazos, identificar áreas de mejora y ajustar tu enfoque en las interacciones sociales.','Culpar a factores externos por los rechazos y sentirte desesperado.'),
    ('Te enfrentas a una serie de obstáculos en tu búsqueda de empleo. ¿Cuál es una
    respuesta resiliente?','Abandonar por completo la búsqueda de empleo debido a los obstáculos.','Ignorar los obstáculos y seguir aplicando a trabajos sin cambios.','Buscar soluciones creativas y persistir a pesar de los obstáculos en tu
    camino hacia el empleo.','Culpar a factores externos por los obstáculos y sentirte desanimado.'),
    ('Te enfrentas a una serie de dificultades financieras debido a la pérdida de empleo.
    ¿Cuál es una respuesta resiliente?','Gastar todo el dinero restante en compras impulsivas para sentirte mejor.','Ignorar la situación financiera y esperar a que cambie por sí sola.','Desarrollar un plan de presupuesto, buscar asesoramiento financiero y
    manejar gastos de manera responsable.','Culpar a factores externos por la situación financiera y sentirte desesperado.'),
    ('Estás experimentando un período de estrés intenso debido a múltiples responsabilidades. ¿Cuál es una respuesta resiliente?','Ignorar el estrés y esperar a que desaparezca por sí solo.','Rendirte ante el estrés y no cumplir con tus responsabilidades.','Buscar estrategias de manejo del estrés y adoptar hábitos saludables
    para enfrentarlo.','Culpar a otros por el estrés y evitar tus responsabilidades.'),
    ('Te enfrentas a una serie de desafíos en la crianza de tus hijos. ¿Cuál es una respuesta resiliente?','Ignorar los desafíos y esperar a que desaparezcan por sí solos.','Sentirte abrumado y rendirte en tus responsabilidades parentales.','Buscar recursos de crianza, apoyo y desarrollar estrategias efectivas
    para abordar los desafíos.','Culpar a factores externos por los desafíos y sentirte desesperado.'),
    ('Te enfrentas a dificultades en tu búsqueda de equilibrio entre el trabajo y la vida personal. ¿Cuál es una respuesta resiliente?','Ignorar las dificultades y continuar sin hacer cambios en
    tu rutina.','Rendirte y dejar de intentar encontrar un equilibrio.','Evaluar tu situación, buscar formas de optimizar tu tiempo y establecer
    límites saludables.','Culpar a otros por las dificultades y sentirte abrumado.'),
    ('Te enfrentas a una serie de fracasos en tus intentos por mejorar tus habilidades en una actividad. ¿Cuál es una respuesta resiliente?','Rendirte y asumir que no tienes talento para esa actividad.','Ignorar los fracasos y continuar sin hacer ajustes en tu enfoque.','Reflexionar sobre los fracasos, identificar áreas de mejora y ajustar tu enfoque en la actividad.','Culpar a factores externos por los fracasos y sentirte desanimado.'),
    ('Te enfrentas a dificultades en tu relación con un ser querido. ¿Cuál es una respuesta resiliente?','Ignorar los problemas y esperar a que la relación mejore por sí sola.','Distanciarte por completo de la persona y evitar cualquier interacción.','Abordar abiertamente los problemas, buscar comunicación y trabajar en conjunto para fortalecer la relación.','Culpar a la otra persona por los problemas y retirarte emocionalmente.'),
    ('Estás experimentando dificultades en tu salud mental debido al estrés laboral.
    ¿Cuál es una respuesta resiliente?','Ignorar el estrés y esperar a que desaparezca por sí solo.','Dejar que el estrés afecte gravemente tu bienestar sin tomar medidas.','Buscar apoyo profesional, adoptar técnicas de manejo del estrés y cuidar tu salud mental.','Culpar a factores externos por el estrés y no hacer nada al respecto.'),
    ('Te encuentras en una situación en la que has perdido la motivación y la pasión por tus actividades diarias. ¿Cuál es una respuesta resiliente?','Ignorar la falta de motivación y continuar con la rutina
    sin cambios.','Rendirte ante la falta de pasión y evitar completamente tus actividades.','Reflexionar sobre tus intereses y objetivos, buscar formas de revitalizar
    tu motivación y pasión.','Culpar a factores externos por la falta de motivación y sentirte desanimado.'),
    ('Te enfrentas a una serie de obstáculos en la realización de un proyecto creativo. ¿Cuál es una respuesta resiliente?','Abandonar el proyecto por completo debido a los
    obstáculos.','Ignorar los obstáculos y continuar sin hacer cambios en tu enfoque
    creativo.','Buscar soluciones creativas y persistir a pesar de los obstáculos en
    tu camino.','Culpar a otros por los obstáculos que enfrentas y sentirte desanimado.'),
    ('Estás enfrentando una serie de rechazos en tus intentos de establecer nuevas amistades. ¿Cuál es una respuesta resiliente?','Evitar por completo la búsqueda de nuevas amistades debido a los rechazos.','Ignorar los rechazos y continuar buscando amistades sin cambios.','Reflexionar sobre los rechazos, identificar áreas de mejora y ajustar tu
    enfoque en las interacciones sociales.','Culpar a factores externos por los rechazos y sentirte desesperado.'),
    ('Te enfrentas a dificultades en tu búsqueda de un cambio de carrera. ¿Cuál es una
    respuesta resiliente?','Rendirte por completo en la búsqueda de un cambio de
    carrera.','Ignorar las dificultades y continuar sin cambios en tu enfoque.','Buscar oportunidades alternativas, adquirir nuevas habilidades y persistir en tu búsqueda.','Culpar a factores externos por las dificultades y sentirte desanimado.'),
    ('Estás experimentando dificultades en tu relación con un familiar cercano. ¿Cuál es una
    respuesta resiliente?','Ignorar los problemas y esperar a que la relación se arregle
     por sí sola.','Cortar por completo el contacto con el familiar y evitar cualquier
    conflicto.','Abordar abiertamente los problemas, buscar comunicación y trabajar juntos para resolver los desafíos.','Culpar al familiar por los problemas y retirarte emocionalmente.'),
    ('Te enfrentas a una serie de fracasos en tus intentos de llevar a cabo un proyecto comunitario. ¿Cuál es una respuesta resiliente?','Rendirte por completo en la realización del proyecto
    comunitario.','Ignorar los fracasos y continuar sin cambios en tu enfoque.','Reflexionar sobre los fracasos, identificar áreas de mejora y ajustar tu estrategia para el proyecto.','Culpar a factores externos por los fracasos y sentirte desanimado.'),
    ('Te encuentras en una situación en la que estás experimentando una falta de dirección y propósito en tu vida. ¿Cuál es una respuesta resiliente?','Ignorar la falta de dirección y continuar con la rutina sin cambios.','Dejar que la falta de propósito afecte tu bienestar emocional y mental.','Reflexionar sobre tus valores y metas, explorar nuevas oportunidades y buscar formas de encontrar propósito.','Culpar a factores externos por la falta de dirección y sentirte
    desesperado.');
