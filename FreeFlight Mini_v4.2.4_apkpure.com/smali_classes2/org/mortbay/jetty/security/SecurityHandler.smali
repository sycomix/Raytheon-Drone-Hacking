.class public Lorg/mortbay/jetty/security/SecurityHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "SecurityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;
    }
.end annotation


# static fields
.field public static __NOBODY:Ljava/security/Principal;

.field public static __NO_USER:Ljava/security/Principal;


# instance fields
.field private _authMethod:Ljava/lang/String;

.field private _authenticator:Lorg/mortbay/jetty/security/Authenticator;

.field private _checkWelcomeFiles:Z

.field private _constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

.field private _constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

.field private _notChecked:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

.field private _userRealm:Lorg/mortbay/jetty/security/UserRealm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 487
    new-instance v0, Lorg/mortbay/jetty/security/SecurityHandler$1;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/SecurityHandler$1;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/security/SecurityHandler;->__NO_USER:Ljava/security/Principal;

    .line 526
    new-instance v0, Lorg/mortbay/jetty/security/SecurityHandler$2;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/SecurityHandler$2;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/security/SecurityHandler;->__NOBODY:Ljava/security/Principal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 44
    const-string v0, "BASIC"

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    .line 47
    new-instance v0, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/PathMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 49
    new-instance v0, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;-><init>(Lorg/mortbay/jetty/security/SecurityHandler;)V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_notChecked:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    .line 41
    return-void
.end method

.method private check(Ljava/lang/Object;Lorg/mortbay/jetty/security/Authenticator;Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z
    .locals 21
    .param p1, "constraints"    # Ljava/lang/Object;
    .param p2, "authenticator"    # Lorg/mortbay/jetty/security/Authenticator;
    .param p3, "realm"    # Lorg/mortbay/jetty/security/UserRealm;
    .param p4, "pathInContext"    # Ljava/lang/String;
    .param p5, "request"    # Lorg/mortbay/jetty/Request;
    .param p6, "response"    # Lorg/mortbay/jetty/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v7, 0x0

    .line 299
    .local v7, "dataConstraint":I
    const/4 v12, 0x0

    .line 300
    .local v12, "roles":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 301
    .local v15, "unauthenticated":Z
    const/4 v8, 0x0

    .line 303
    .local v8, "forbidden":Z
    const/4 v4, 0x0

    .local v4, "c":I
    move-object/from16 v19, v12

    .end local v12    # "roles":Ljava/lang/Object;
    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_5

    .line 305
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/mortbay/jetty/security/Constraint;

    .line 308
    .local v13, "sc":Lorg/mortbay/jetty/security/Constraint;
    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_2

    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->hasDataConstraint()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 310
    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->getDataConstraint()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v7, :cond_0

    .line 311
    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->getDataConstraint()I

    move-result v7

    .line 317
    :cond_0
    :goto_1
    if-nez v15, :cond_1

    if-nez v8, :cond_1

    .line 319
    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->getAuthenticate()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 321
    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->isAnyRole()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 323
    const-string v12, "*"

    .local v12, "roles":Ljava/lang/String;
    move-object/from16 v19, v12

    .line 303
    .end local v12    # "roles":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 314
    :cond_2
    const/4 v7, -0x1

    goto :goto_1

    .line 327
    :cond_3
    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v14

    .line 328
    .local v14, "scr":[Ljava/lang/String;
    if-eqz v14, :cond_4

    array-length v0, v14

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 330
    :cond_4
    const/4 v8, 0x1

    .line 350
    .end local v13    # "sc":Lorg/mortbay/jetty/security/Constraint;
    .end local v14    # "scr":[Ljava/lang/String;
    :cond_5
    if-eqz v8, :cond_b

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mortbay/jetty/security/FormAuthenticator;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v18, p2

    check-cast v18, Lorg/mortbay/jetty/security/FormAuthenticator;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/FormAuthenticator;->isLoginOrErrorPage(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 355
    :cond_6
    const/16 v18, 0x193

    move-object/from16 v0, p6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 356
    const/16 v18, 0x0

    .line 484
    :goto_3
    return v18

    .line 336
    .restart local v13    # "sc":Lorg/mortbay/jetty/security/Constraint;
    .restart local v14    # "scr":[Ljava/lang/String;
    :cond_7
    const-string v18, "*"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 338
    array-length v10, v14

    .local v10, "r":I
    move v11, v10

    .end local v10    # "r":I
    .local v11, "r":I
    move-object/from16 v18, v19

    :goto_4
    add-int/lit8 v10, v11, -0x1

    .end local v11    # "r":I
    .restart local v10    # "r":I
    if-lez v11, :cond_9

    .line 339
    aget-object v19, v14, v10

    invoke-static/range {v18 .. v19}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .local v12, "roles":Ljava/lang/Object;
    move v11, v10

    .end local v10    # "r":I
    .restart local v11    # "r":I
    move-object/from16 v18, v12

    goto :goto_4

    .end local v11    # "r":I
    .end local v12    # "roles":Ljava/lang/Object;
    :cond_8
    move-object/from16 v18, v19

    :cond_9
    move-object/from16 v19, v18

    .line 342
    goto :goto_2

    .line 345
    .end local v14    # "scr":[Ljava/lang/String;
    :cond_a
    const/4 v15, 0x1

    goto :goto_2

    .line 360
    .end local v13    # "sc":Lorg/mortbay/jetty/security/Constraint;
    :cond_b
    if-lez v7, :cond_c

    .line 362
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v5

    .line 363
    .local v5, "connection":Lorg/mortbay/jetty/HttpConnection;
    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v6

    .line 365
    .local v6, "connector":Lorg/mortbay/jetty/Connector;
    packed-switch v7, :pswitch_data_0

    .line 411
    const/16 v18, 0x193

    const/16 v19, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    .line 412
    const/16 v18, 0x0

    goto :goto_3

    .line 368
    :pswitch_0
    move-object/from16 v0, p5

    invoke-interface {v6, v0}, Lorg/mortbay/jetty/Connector;->isIntegral(Lorg/mortbay/jetty/Request;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 417
    .end local v5    # "connection":Lorg/mortbay/jetty/HttpConnection;
    .end local v6    # "connector":Lorg/mortbay/jetty/Connector;
    :cond_c
    if-nez v15, :cond_1a

    if-eqz v19, :cond_1a

    .line 419
    if-nez p3, :cond_12

    .line 421
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "Request "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, " failed - no realm"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 422
    const/16 v18, 0x1f4

    const-string v19, "No realm"

    move-object/from16 v0, p6

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    .line 423
    const/16 v18, 0x0

    goto :goto_3

    .line 370
    .restart local v5    # "connection":Lorg/mortbay/jetty/HttpConnection;
    .restart local v6    # "connector":Lorg/mortbay/jetty/Connector;
    :cond_d
    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getConfidentialPort()I

    move-result v18

    if-lez v18, :cond_f

    .line 372
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getIntegralScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getIntegralPort()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 379
    .local v16, "url":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    .line 380
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 381
    :cond_e
    const/16 v18, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 382
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    .line 386
    .end local v16    # "url":Ljava/lang/String;
    :goto_5
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 385
    :cond_f
    const/16 v18, 0x193

    const/16 v19, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    goto :goto_5

    .line 388
    :pswitch_1
    move-object/from16 v0, p5

    invoke-interface {v6, v0}, Lorg/mortbay/jetty/Connector;->isConfidential(Lorg/mortbay/jetty/Request;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 391
    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getConfidentialPort()I

    move-result v18

    if-lez v18, :cond_11

    .line 393
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getConfidentialScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getConfidentialPort()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 400
    .restart local v16    # "url":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_10

    .line 401
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 403
    :cond_10
    const/16 v18, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 404
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    .line 408
    .end local v16    # "url":Ljava/lang/String;
    :goto_6
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 407
    :cond_11
    const/16 v18, 0x193

    const/16 v19, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    goto :goto_6

    .line 426
    .end local v5    # "connection":Lorg/mortbay/jetty/HttpConnection;
    .end local v6    # "connector":Lorg/mortbay/jetty/Connector;
    :cond_12
    const/16 v17, 0x0

    .line 429
    .local v17, "user":Ljava/security/Principal;
    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getAuthType()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_15

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRemoteUser()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_15

    .line 432
    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v17

    .line 433
    if-nez v17, :cond_13

    .line 434
    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRemoteUser()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, p5

    invoke-interface {v0, v1, v2, v3}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v17

    .line 435
    :cond_13
    if-nez v17, :cond_14

    if-eqz p2, :cond_14

    .line 436
    invoke-interface/range {p2 .. p6}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;

    move-result-object v17

    .line 451
    :cond_14
    :goto_7
    if-nez v17, :cond_17

    .line 452
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 438
    :cond_15
    if-eqz p2, :cond_16

    .line 441
    invoke-interface/range {p2 .. p6}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;

    move-result-object v17

    goto :goto_7

    .line 446
    :cond_16
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "Mis-configured Authenticator for "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 447
    const/16 v18, 0x1f4

    const-string v20, "Configuration error"

    move-object/from16 v0, p6

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    goto :goto_7

    .line 453
    :cond_17
    sget-object v18, Lorg/mortbay/jetty/security/SecurityHandler;->__NOBODY:Ljava/security/Principal;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 454
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 456
    :cond_18
    const-string v18, "*"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1b

    .line 458
    const/4 v9, 0x0

    .line 459
    .local v9, "inRole":Z
    invoke-static/range {v19 .. v19}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v10

    .restart local v10    # "r":I
    move v11, v10

    .end local v10    # "r":I
    .restart local v11    # "r":I
    :goto_8
    add-int/lit8 v10, v11, -0x1

    .end local v11    # "r":I
    .restart local v10    # "r":I
    if-lez v11, :cond_19

    .line 461
    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/mortbay/jetty/security/UserRealm;->isUserInRole(Ljava/security/Principal;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 463
    const/4 v9, 0x1

    .line 468
    :cond_19
    if-nez v9, :cond_1b

    .line 470
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "AUTH FAILURE: incorrect role for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 474
    const/16 v18, 0x193

    const-string v19, "User not in required role"

    move-object/from16 v0, p6

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    .line 475
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 481
    .end local v9    # "inRole":Z
    .end local v10    # "r":I
    .end local v17    # "user":Ljava/security/Principal;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/security/SecurityHandler;->_notChecked:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    move-object/from16 v18, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 484
    :cond_1b
    const/16 v18, 0x1

    goto/16 :goto_3

    .restart local v9    # "inRole":Z
    .restart local v10    # "r":I
    .restart local v17    # "user":Ljava/security/Principal;
    :cond_1c
    move v11, v10

    .end local v10    # "r":I
    .restart local v11    # "r":I
    goto :goto_8

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkSecurityConstraints(Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z
    .locals 17
    .param p1, "pathInContext"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/mortbay/jetty/Request;
    .param p3, "response"    # Lorg/mortbay/jetty/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 240
    .local v13, "mapping_entries":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 241
    .local v16, "pattern":Ljava/lang/String;
    const/4 v9, 0x0

    .line 247
    .local v9, "constraints":Ljava/lang/Object;
    if-eqz v13, :cond_3

    .line 249
    const/4 v11, 0x0

    .end local v9    # "constraints":Ljava/lang/Object;
    .local v11, "m":I
    :goto_0
    invoke-static {v13}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 251
    invoke-static {v13, v11}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 252
    .local v10, "entry":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 253
    .local v14, "mappings":Ljava/lang/Object;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 255
    .local v15, "path_spec":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "c":I
    :goto_1
    invoke-static {v14}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v8, v1, :cond_2

    .line 257
    invoke-static {v14, v8}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/mortbay/jetty/security/ConstraintMapping;

    .line 258
    .local v12, "mapping":Lorg/mortbay/jetty/security/ConstraintMapping;
    invoke-virtual {v12}, Lorg/mortbay/jetty/security/ConstraintMapping;->getMethod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v12}, Lorg/mortbay/jetty/security/ConstraintMapping;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 261
    :cond_0
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v2, v9

    .line 269
    .end local v8    # "c":I
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v12    # "mapping":Lorg/mortbay/jetty/security/ConstraintMapping;
    .end local v14    # "mappings":Ljava/lang/Object;
    .end local v15    # "path_spec":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/mortbay/jetty/security/SecurityHandler;->check(Ljava/lang/Object;Lorg/mortbay/jetty/security/Authenticator;Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z

    move-result v1

    .line 273
    .end local v11    # "m":I
    :goto_4
    return v1

    .line 264
    .restart local v8    # "c":I
    .restart local v10    # "entry":Ljava/util/Map$Entry;
    .restart local v11    # "m":I
    .restart local v12    # "mapping":Lorg/mortbay/jetty/security/ConstraintMapping;
    .restart local v14    # "mappings":Ljava/lang/Object;
    .restart local v15    # "path_spec":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v15

    .line 265
    invoke-virtual {v12}, Lorg/mortbay/jetty/security/ConstraintMapping;->getConstraint()Lorg/mortbay/jetty/security/Constraint;

    move-result-object v1

    invoke-static {v9, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "constraints":Ljava/lang/Object;
    goto :goto_2

    .line 249
    .end local v9    # "constraints":Ljava/lang/Object;
    .end local v12    # "mapping":Lorg/mortbay/jetty/security/ConstraintMapping;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 272
    .end local v8    # "c":I
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "m":I
    .end local v14    # "mappings":Ljava/lang/Object;
    .end local v15    # "path_spec":Ljava/lang/String;
    .restart local v9    # "constraints":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/security/SecurityHandler;->_notChecked:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 273
    const/4 v1, 0x1

    goto :goto_4

    .end local v9    # "constraints":Ljava/lang/Object;
    .restart local v11    # "m":I
    :cond_4
    move-object v2, v9

    goto :goto_3
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    if-nez v0, :cond_0

    .line 163
    const-string v0, "BASIC"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Lorg/mortbay/jetty/security/BasicAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/BasicAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    .line 175
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    .line 176
    return-void

    .line 165
    :cond_1
    const-string v0, "DIGEST"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    new-instance v0, Lorg/mortbay/jetty/security/DigestAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/DigestAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    goto :goto_0

    .line 167
    :cond_2
    const-string v0, "CLIENT_CERT"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    new-instance v0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/ClientCertAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    goto :goto_0

    .line 169
    :cond_3
    const-string v0, "FORM"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    new-instance v0, Lorg/mortbay/jetty/security/FormAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/FormAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    goto :goto_0

    .line 172
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown Authentication method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticator()Lorg/mortbay/jetty/security/Authenticator;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    return-object v0
.end method

.method public getConstraintMappings()[Lorg/mortbay/jetty/security/ConstraintMapping;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    return-object v0
.end method

.method public getUserRealm()Lorg/mortbay/jetty/security/UserRealm;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 6
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
    const/4 v5, 0x1

    .line 185
    instance-of v3, p2, Lorg/mortbay/jetty/Request;

    if-eqz v3, :cond_1

    move-object v3, p2

    check-cast v3, Lorg/mortbay/jetty/Request;

    move-object v0, v3

    .line 186
    .local v0, "base_request":Lorg/mortbay/jetty/Request;
    :goto_0
    instance-of v3, p3, Lorg/mortbay/jetty/Response;

    if-eqz v3, :cond_2

    move-object v3, p3

    check-cast v3, Lorg/mortbay/jetty/Response;

    move-object v1, v3

    .line 187
    .local v1, "base_response":Lorg/mortbay/jetty/Response;
    :goto_1
    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v2

    .line 190
    .local v2, "old_realm":Lorg/mortbay/jetty/security/UserRealm;
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    .line 191
    if-ne p4, v5, :cond_3

    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/jetty/security/SecurityHandler;->checkSecurityConstraints(Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 193
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v3, :cond_0

    .line 222
    if-ne p4, v5, :cond_0

    .line 224
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    .line 227
    :cond_0
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    .line 229
    :goto_2
    return-void

    .line 185
    .end local v0    # "base_request":Lorg/mortbay/jetty/Request;
    .end local v1    # "base_response":Lorg/mortbay/jetty/Response;
    .end local v2    # "old_realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    goto :goto_0

    .line 186
    .restart local v0    # "base_request":Lorg/mortbay/jetty/Request;
    :cond_2
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v1

    goto :goto_1

    .line 197
    .restart local v1    # "base_response":Lorg/mortbay/jetty/Response;
    .restart local v2    # "old_realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_3
    const/4 v3, 0x2

    if-ne p4, v3, :cond_5

    :try_start_1
    iget-boolean v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    if-eqz v3, :cond_5

    const-string v3, "org.mortbay.jetty.welcome"

    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 199
    const-string v3, "org.mortbay.jetty.welcome"

    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/jetty/security/SecurityHandler;->checkSecurityConstraints(Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 202
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v3, :cond_4

    .line 222
    if-ne p4, v5, :cond_4

    .line 224
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    .line 227
    :cond_4
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    goto :goto_2

    .line 208
    :cond_5
    :try_start_2
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    instance-of v3, v3, Lorg/mortbay/jetty/security/FormAuthenticator;

    if-eqz v3, :cond_7

    const-string v3, "/j_security_check"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 210
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v4

    invoke-interface {v3, v4, p1, v0, v1}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;

    .line 211
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v3, :cond_6

    .line 222
    if-ne p4, v5, :cond_6

    .line 224
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    .line 227
    :cond_6
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    goto :goto_2

    .line 215
    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 216
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :cond_8
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v3, :cond_9

    .line 222
    if-ne p4, v5, :cond_9

    .line 224
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    .line 227
    :cond_9
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    goto/16 :goto_2

    .line 220
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v4, :cond_a

    .line 222
    if-ne p4, v5, :cond_a

    .line 224
    iget-object v4, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    .line 227
    :cond_a
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    throw v3
.end method

.method public hasConstraints()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckWelcomeFiles()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    return v0
.end method

.method public setAuthMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Handler started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setAuthenticator(Lorg/mortbay/jetty/security/Authenticator;)V
    .locals 0
    .param p1, "authenticator"    # Lorg/mortbay/jetty/security/Authenticator;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    .line 69
    return-void
.end method

.method public setCheckWelcomeFiles(Z)V
    .locals 0
    .param p1, "authenticateWelcomeFiles"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    .line 155
    return-void
.end method

.method public setConstraintMappings([Lorg/mortbay/jetty/security/ConstraintMapping;)V
    .locals 4
    .param p1, "constraintMappings"    # [Lorg/mortbay/jetty/security/ConstraintMapping;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    .line 105
    iget-object v2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    if-eqz v2, :cond_0

    .line 107
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    .line 108
    iget-object v2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/PathMap;->clear()V

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 112
    iget-object v2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mortbay/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/servlet/PathMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "mappings":Ljava/lang/Object;
    iget-object v2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mortbay/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    .end local v1    # "mappings":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 0
    .param p1, "userRealm"    # Lorg/mortbay/jetty/security/UserRealm;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    .line 87
    return-void
.end method
