.class public abstract Ljavax/mail/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Service$TerminatorEvent;
    }
.end annotation


# instance fields
.field private connected:Z

.field private connectionListeners:Ljava/util/Vector;

.field protected debug:Z

.field private q:Ljavax/mail/EventQueue;

.field private qLock:Ljava/lang/Object;

.field protected session:Ljavax/mail/Session;

.field protected url:Ljavax/mail/URLName;


# direct methods
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 65
    iput-boolean v0, p0, Ljavax/mail/Service;->debug:Z

    .line 67
    iput-boolean v0, p0, Ljavax/mail/Service;->connected:Z

    .line 68
    iput-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 542
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    .line 78
    iput-object p2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 79
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/Service;->debug:Z

    .line 80
    return-void
.end method

.method private terminateQueue()V
    .locals 4

    .prologue
    .line 581
    iget-object v2, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v2

    .line 582
    :try_start_0
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-eqz v1, :cond_0

    .line 583
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 584
    .local v0, "dummyListeners":Ljava/util/Vector;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 585
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    new-instance v3, Ljavax/mail/Service$TerminatorEvent;

    invoke-direct {v3}, Ljavax/mail/Service$TerminatorEvent;-><init>()V

    invoke-virtual {v1, v3, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 586
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 588
    .end local v0    # "dummyListeners":Ljava/util/Vector;
    :cond_0
    monitor-exit v2

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 472
    :cond_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 412
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/mail/Service;->setConnected(Z)V

    .line 413
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0, v0, v0}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "already connected"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_0
    const/16 v17, 0x0

    .line 202
    .local v17, "connected":Z
    const/16 v21, 0x0

    .line 203
    .local v21, "save":Z
    const/4 v3, 0x0

    .line 204
    .local v3, "protocol":Ljava/lang/String;
    const/4 v6, 0x0

    .line 209
    .local v6, "file":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v2, :cond_4

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 211
    if-nez p1, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 213
    :cond_1
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getPort()I

    move-result p2

    .line 216
    :cond_2
    if-nez p3, :cond_c

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object p3

    .line 218
    if-nez p4, :cond_3

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object p4

    .line 226
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v6

    .line 230
    :cond_4
    if-eqz v3, :cond_6

    .line 231
    if-nez p1, :cond_5

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "mail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 233
    :cond_5
    if-nez p3, :cond_6

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "mail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 238
    :cond_6
    if-nez p1, :cond_7

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v4, "mail.host"

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 241
    :cond_7
    if-nez p3, :cond_8

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v4, "mail.user"

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 245
    :cond_8
    if-nez p3, :cond_9

    .line 247
    :try_start_0
    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 255
    :cond_9
    :goto_1
    if-nez p4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v2, :cond_a

    .line 257
    new-instance v2, Ljavax/mail/URLName;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;

    move-result-object v20

    .line 259
    .local v20, "pw":Ljavax/mail/PasswordAuthentication;
    if-eqz v20, :cond_e

    .line 260
    if-nez p3, :cond_d

    .line 261
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object p3

    .line 262
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p4

    .line 273
    .end local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    :cond_a
    :goto_2
    const/16 v16, 0x0

    .line 275
    .local v16, "authEx":Ljavax/mail/AuthenticationFailedException;
    :try_start_1
    invoke-virtual/range {p0 .. p4}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljavax/mail/AuthenticationFailedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    .line 281
    :goto_3
    if-nez v17, :cond_b

    .line 284
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 288
    .local v8, "addr":Ljava/net/InetAddress;
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const/4 v11, 0x0

    move/from16 v9, p2

    move-object v10, v3

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v20

    .line 292
    .restart local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    if-eqz v20, :cond_b

    .line 293
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object p3

    .line 294
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p4

    .line 297
    invoke-virtual/range {p0 .. p4}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 302
    .end local v8    # "addr":Ljava/net/InetAddress;
    .end local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    :cond_b
    if-nez v17, :cond_10

    .line 303
    if-eqz v16, :cond_f

    .line 304
    throw v16

    .line 221
    .end local v16    # "authEx":Ljavax/mail/AuthenticationFailedException;
    :cond_c
    if-nez p4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_0

    .line 248
    :catch_0
    move-exception v22

    .line 249
    .local v22, "sex":Ljava/lang/SecurityException;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljavax/mail/Service;->debug:Z

    if-eqz v2, :cond_9

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_1

    .line 263
    .end local v22    # "sex":Ljava/lang/SecurityException;
    .restart local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    :cond_d
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 264
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p4

    .line 265
    goto :goto_2

    .line 267
    :cond_e
    const/16 v21, 0x1

    goto :goto_2

    .line 276
    .end local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    .restart local v16    # "authEx":Ljavax/mail/AuthenticationFailedException;
    :catch_1
    move-exception v19

    .line 277
    .local v19, "ex":Ljavax/mail/AuthenticationFailedException;
    move-object/from16 v16, v19

    goto :goto_3

    .line 285
    .end local v19    # "ex":Ljavax/mail/AuthenticationFailedException;
    :catch_2
    move-exception v18

    .line 286
    .local v18, "e":Ljava/net/UnknownHostException;
    const/4 v8, 0x0

    .restart local v8    # "addr":Ljava/net/InetAddress;
    goto :goto_4

    .line 306
    .end local v8    # "addr":Ljava/net/InetAddress;
    .end local v18    # "e":Ljava/net/UnknownHostException;
    :cond_f
    new-instance v2, Ljavax/mail/AuthenticationFailedException;

    invoke-direct {v2}, Ljavax/mail/AuthenticationFailedException;-><init>()V

    throw v2

    .line 309
    :cond_10
    new-instance v9, Ljavax/mail/URLName;

    move-object v10, v3

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object v13, v6

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v9 .. v15}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 311
    if-eqz v21, :cond_11

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v4

    new-instance v5, Ljavax/mail/PasswordAuthentication;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v5, v0, v1}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljavax/mail/Session;->setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V

    .line 316
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/Service;->setConnected(Z)V

    .line 319
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/Service;->notifyConnectionListeners(I)V

    .line 320
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Ljavax/mail/Service;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 595
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 596
    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V

    .line 597
    return-void
.end method

.method public getURLName()Ljavax/mail/URLName;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 431
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    new-instance v0, Ljavax/mail/URLName;

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v3}, Ljavax/mail/URLName;->getPort()I

    move-result v3

    iget-object v5, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v5}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Ljavax/mail/Service;->connected:Z

    return v0
.end method

.method protected declared-synchronized notifyConnectionListeners(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 501
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 502
    .local v0, "e":Ljavax/mail/event/ConnectionEvent;
    iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Service;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 515
    .end local v0    # "e":Ljavax/mail/event/ConnectionEvent;
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 516
    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_1
    monitor-exit p0

    return-void

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method protected queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 3
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    .prologue
    .line 549
    iget-object v2, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v2

    .line 550
    :try_start_0
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-nez v1, :cond_0

    .line 551
    new-instance v1, Ljavax/mail/EventQueue;

    invoke-direct {v1}, Ljavax/mail/EventQueue;-><init>()V

    iput-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 552
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 563
    .local v0, "v":Ljava/util/Vector;
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v1, p1, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 564
    return-void

    .line 552
    .end local v0    # "v":Ljava/util/Vector;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :cond_0
    monitor-exit p0

    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Ljavax/mail/Service;->connected:Z

    .line 390
    return-void
.end method

.method protected setURLName(Ljavax/mail/URLName;)V
    .locals 0
    .param p1, "url"    # Ljavax/mail/URLName;

    .prologue
    .line 457
    iput-object p1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 458
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    .line 525
    .local v0, "url":Ljavax/mail/URLName;
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0}, Ljavax/mail/URLName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
