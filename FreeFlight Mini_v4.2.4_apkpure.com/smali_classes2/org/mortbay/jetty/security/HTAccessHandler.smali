.class public Lorg/mortbay/jetty/security/HTAccessHandler;
.super Lorg/mortbay/jetty/security/SecurityHandler;
.source "HTAccessHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;,
        Lorg/mortbay/jetty/security/HTAccessHandler$DummyPrincipal;
    }
.end annotation


# static fields
.field static class$org$mortbay$jetty$security$HTAccessHandler:Ljava/lang/Class;

.field private static log:Lorg/mortbay/log/Logger;


# instance fields
.field _accessFile:Ljava/lang/String;

.field _default:Ljava/lang/String;

.field transient _htCache:Ljava/util/HashMap;

.field private protegee:Lorg/mortbay/jetty/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->class$org$mortbay$jetty$security$HTAccessHandler:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.security.HTAccessHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/security/HTAccessHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->class$org$mortbay$jetty$security$HTAccessHandler:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->class$org$mortbay$jetty$security$HTAccessHandler:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/mortbay/jetty/security/SecurityHandler;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_default:Ljava/lang/String;

    .line 57
    const-string v0, ".htaccess"

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_htCache:Ljava/util/HashMap;

    .line 305
    return-void
.end method

.method static access$000()Lorg/mortbay/log/Logger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    return-object v0
.end method

.method private callWrappedHandler(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p4, "dispatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HTAccessHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 259
    .local v0, "handler":Lorg/mortbay/jetty/Handler;
    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 261
    :cond_0
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public getPrincipal(Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;)Ljava/security/Principal;
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "realm"    # Lorg/mortbay/jetty/security/UserRealm;

    .prologue
    .line 273
    if-nez p2, :cond_0

    .line 274
    new-instance v0, Lorg/mortbay/jetty/security/HTAccessHandler$DummyPrincipal;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/jetty/security/HTAccessHandler$DummyPrincipal;-><init>(Lorg/mortbay/jetty/security/HTAccessHandler;Ljava/lang/String;)V

    .line 276
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2, p1}, Lorg/mortbay/jetty/security/UserRealm;->getPrincipal(Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v0

    goto :goto_0
.end method

.method protected getProtegee()Lorg/mortbay/jetty/Handler;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->protegee:Lorg/mortbay/jetty/Handler;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 26
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p4, "dispatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 97
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mortbay/jetty/Request;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v21, p2

    check-cast v21, Lorg/mortbay/jetty/Request;

    move-object/from16 v5, v21

    .line 98
    .local v5, "base_request":Lorg/mortbay/jetty/Request;
    :goto_0
    move-object/from16 v0, p3

    instance-of v0, v0, Lorg/mortbay/jetty/Response;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v21, p3

    check-cast v21, Lorg/mortbay/jetty/Response;

    move-object/from16 v6, v21

    .line 100
    .local v6, "base_response":Lorg/mortbay/jetty/Response;
    :goto_1
    move-object/from16 v17, p1

    .line 102
    .local v17, "pathInContext":Ljava/lang/String;
    const/16 v20, 0x0

    .line 103
    .local v20, "user":Ljava/lang/String;
    const/16 v16, 0x0

    .line 104
    .local v16, "password":Ljava/lang/String;
    const/4 v4, 0x1

    .line 106
    .local v4, "IPValid":Z
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface/range {v21 .. v21}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 107
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "HTAccessHandler pathInContext="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v21 .. v24}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    :cond_0
    const-string v21, "Authorization"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "credentials":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 113
    const/16 v21, 0x20

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 114
    sget-object v21, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v7, v0}, Lorg/mortbay/jetty/security/B64Code;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 115
    const/16 v21, 0x3a

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 116
    .local v14, "i":I
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 117
    add-int/lit8 v21, v14, 0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 119
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface/range {v21 .. v21}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 120
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "User="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, ", password="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "******************************"

    const/16 v24, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v21 .. v24}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .end local v14    # "i":I
    :cond_1
    const/4 v11, 0x0

    .line 127
    .local v11, "ht":Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    const/16 v18, 0x0

    .line 128
    .local v18, "resource":Lorg/mortbay/resource/Resource;
    :try_start_0
    const-string v21, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v8, v17

    .line 131
    .local v8, "directory":Ljava/lang/String;
    :goto_2
    if-eqz v8, :cond_3

    .line 133
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 134
    .local v13, "htPath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/security/HTAccessHandler;->getProtegee()Lorg/mortbay/jetty/Handler;

    move-result-object v21

    check-cast v21, Lorg/mortbay/jetty/handler/ContextHandler;

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v18

    .line 135
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface/range {v21 .. v21}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 136
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "directory="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, " resource="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v21 .. v24}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    :cond_2
    if-eqz v18, :cond_c

    invoke-virtual/range {v18 .. v18}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-virtual/range {v18 .. v18}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_c

    .line 144
    .end local v13    # "htPath":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x1

    .line 147
    .local v10, "haveHtAccess":Z
    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->_default:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->_default:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v18

    .line 150
    invoke-virtual/range {v18 .. v18}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-virtual/range {v18 .. v18}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 151
    :cond_4
    const/4 v10, 0x0

    .line 153
    :cond_5
    if-nez v18, :cond_6

    .line 154
    const/4 v10, 0x0

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "~"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, ".bak"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 161
    :cond_7
    const/16 v21, 0x193

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 162
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v8    # "directory":Ljava/lang/String;
    .end local v10    # "haveHtAccess":Z
    :cond_8
    :goto_3
    return-void

    .line 97
    .end local v4    # "IPValid":Z
    .end local v5    # "base_request":Lorg/mortbay/jetty/Request;
    .end local v6    # "base_response":Lorg/mortbay/jetty/Response;
    .end local v7    # "credentials":Ljava/lang/String;
    .end local v11    # "ht":Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    .end local v16    # "password":Ljava/lang/String;
    .end local v17    # "pathInContext":Ljava/lang/String;
    .end local v18    # "resource":Lorg/mortbay/resource/Resource;
    .end local v20    # "user":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v5

    goto/16 :goto_0

    .line 98
    .restart local v5    # "base_request":Lorg/mortbay/jetty/Request;
    :cond_a
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v6

    goto/16 :goto_1

    .line 128
    .restart local v4    # "IPValid":Z
    .restart local v6    # "base_response":Lorg/mortbay/jetty/Response;
    .restart local v7    # "credentials":Ljava/lang/String;
    .restart local v11    # "ht":Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    .restart local v16    # "password":Ljava/lang/String;
    .restart local v17    # "pathInContext":Ljava/lang/String;
    .restart local v18    # "resource":Lorg/mortbay/resource/Resource;
    .restart local v20    # "user":Ljava/lang/String;
    :cond_b
    :try_start_1
    invoke-static/range {v17 .. v17}, Lorg/mortbay/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 140
    .restart local v8    # "directory":Ljava/lang/String;
    .restart local v13    # "htPath":Ljava/lang/String;
    :cond_c
    const/16 v18, 0x0

    .line 141
    invoke-static {v8}, Lorg/mortbay/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 142
    goto/16 :goto_2

    .line 166
    .end local v13    # "htPath":Ljava/lang/String;
    .restart local v10    # "haveHtAccess":Z
    :cond_d
    if-eqz v10, :cond_18

    .line 168
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface/range {v21 .. v21}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 169
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "HTACCESS="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v21 .. v24}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->_htCache:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;

    move-object v11, v0

    .line 172
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getLastModified()J

    move-result-wide v22

    invoke-virtual/range {v18 .. v18}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-eqz v21, :cond_11

    .line 174
    :cond_f
    new-instance v12, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;-><init>(Lorg/mortbay/resource/Resource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    .end local v11    # "ht":Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    .local v12, "ht":Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->_htCache:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface/range {v21 .. v21}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 177
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "HTCache loaded "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v21 .. v24}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_10
    move-object v11, v12

    .line 181
    .end local v12    # "ht":Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    .restart local v11    # "ht":Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    :cond_11
    :try_start_3
    invoke-virtual {v11}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->isForbidden()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 183
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "Mis-configured htaccess: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v21 .. v24}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    const/16 v21, 0x193

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 185
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 242
    .end local v8    # "directory":Ljava/lang/String;
    .end local v10    # "haveHtAccess":Z
    :catch_0
    move-exception v9

    .line 244
    .local v9, "ex":Ljava/lang/Exception;
    :goto_4
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    const-string v22, "Exception"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v9}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    if-eqz v11, :cond_8

    .line 247
    const/16 v21, 0x1f4

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 248
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    goto/16 :goto_3

    .line 190
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v8    # "directory":Ljava/lang/String;
    .restart local v10    # "haveHtAccess":Z
    :cond_12
    :try_start_4
    invoke-virtual {v11}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getMethods()Ljava/util/HashMap;

    move-result-object v15

    .line 191
    .local v15, "methods":Ljava/util/Map;
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v21

    if-lez v21, :cond_13

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13

    .line 193
    invoke-direct/range {p0 .. p4}, Lorg/mortbay/jetty/security/HTAccessHandler;->callWrappedHandler(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    goto/16 :goto_3

    .line 198
    :cond_13
    invoke-virtual {v11}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getSatisfy()I

    move-result v19

    .line 201
    .local v19, "satisfy":I
    const-string v21, ""

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->checkAccess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 202
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    invoke-interface/range {v21 .. v21}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_14

    .line 203
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "IPValid = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v21 .. v24}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    :cond_14
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_15

    if-nez v19, :cond_15

    .line 208
    invoke-direct/range {p0 .. p4}, Lorg/mortbay/jetty/security/HTAccessHandler;->callWrappedHandler(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    goto/16 :goto_3

    .line 214
    :cond_15
    if-nez v4, :cond_16

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 216
    const/16 v21, 0x193

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 217
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    goto/16 :goto_3

    .line 222
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/security/HTAccessHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2, v5}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->checkAuth(Ljava/lang/String;Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;)Z

    move-result v21

    if-nez v21, :cond_17

    .line 224
    sget-object v21, Lorg/mortbay/jetty/security/HTAccessHandler;->log:Lorg/mortbay/log/Logger;

    const-string v22, "Auth Failed"

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v21 .. v24}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    const-string v21, "WWW-Authenticate"

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "basic realm="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual {v11}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/16 v21, 0x191

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 227
    invoke-virtual {v6}, Lorg/mortbay/jetty/Response;->complete()V

    .line 228
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    goto/16 :goto_3

    .line 233
    :cond_17
    if-eqz v20, :cond_18

    .line 235
    const-string v21, "BASIC"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/security/HTAccessHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/security/HTAccessHandler;->getPrincipal(Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;)Ljava/security/Principal;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 240
    .end local v15    # "methods":Ljava/util/Map;
    .end local v19    # "satisfy":I
    :cond_18
    invoke-direct/range {p0 .. p4}, Lorg/mortbay/jetty/security/HTAccessHandler;->callWrappedHandler(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 242
    .end local v11    # "ht":Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    .restart local v12    # "ht":Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    :catch_1
    move-exception v9

    move-object v11, v12

    .end local v12    # "ht":Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    .restart local v11    # "ht":Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
    goto/16 :goto_4
.end method

.method public setAccessFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "anArg"    # Ljava/lang/String;

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const-string v0, ".htaccess"

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_accessFile:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefault(Ljava/lang/String;)V
    .locals 0
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->_default:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setProtegee(Lorg/mortbay/jetty/Handler;)V
    .locals 0
    .param p1, "protegee"    # Lorg/mortbay/jetty/Handler;

    .prologue
    .line 887
    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->protegee:Lorg/mortbay/jetty/Handler;

    .line 888
    return-void
.end method
