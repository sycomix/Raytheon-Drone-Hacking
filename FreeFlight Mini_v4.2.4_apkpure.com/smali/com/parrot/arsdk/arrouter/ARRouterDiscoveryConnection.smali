.class public abstract Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;
.super Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;
.source "ARRouterDiscoveryConnection.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private router:Lcom/parrot/arsdk/arrouter/ARRouter;

.field private routerIntent:Landroid/content/Intent;

.field private final semaphore:Ljava/util/concurrent/Semaphore;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;-><init>()V

    .line 29
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection$1;-><init>(Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->serviceConnection:Landroid/content/ServiceConnection;

    .line 58
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->context:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->routerIntent:Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->routerIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 62
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;
    .param p1, "x1"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method


# virtual methods
.method public ControllerConnection(ILjava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 4
    .param p1, "port"    # I
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v1, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->TAG:Ljava/lang/String;

    const-string v2, "ControllerConnection ..."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    sget-object v1, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "super.ControllerConnection port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1, p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ControllerConnection(ILjava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v1

    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected final onReceiveJson(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 6
    .param p1, "dataRx"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 134
    .local v2, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v4, p2}, Lcom/parrot/arsdk/arrouter/ARRouter;->setDeviceIp(Ljava/lang/String;)V

    .line 137
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, "json":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arrouter/ARRouter;->getDiscoveryConfig()Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    move-result-object v0

    .line 139
    .local v0, "discoveryConfig":Lcom/parrot/arsdk/arrouter/DiscoveryConfig;
    invoke-virtual {v0, v3}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->updateFrom(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arrouter/ARRouter;->disconnectFromTablet()V

    .line 146
    :cond_0
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_C2DPORT_KEY:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/parrot/arsdk/arrouter/ARRouter;->setrouterToDevicePort(I)V

    .line 147
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_C2DPORT_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_C2DPORT_KEY:Ljava/lang/String;

    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->getcontrollerToRouterPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->onReceiveJsonFromRouter(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 158
    .end local v0    # "discoveryConfig":Lcom/parrot/arsdk/arrouter/DiscoveryConfig;
    .end local v3    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 153
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 156
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0
.end method

.method protected abstract onReceiveJsonFromRouter(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
.end method

.method protected final onSendJson()Ljava/lang/String;
    .locals 6

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->onSendJsonToRouter()Lorg/json/JSONObject;

    move-result-object v1

    .line 108
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 109
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_D2CPORT_KEY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_D2CPORT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/parrot/arsdk/arrouter/ARRouter;->setrouterToControllerPort(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 117
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_D2CPORT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_D2CPORT_KEY:Ljava/lang/String;

    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->getdeviceToRouterPort()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected abstract onSendJsonToRouter()Lorg/json/JSONObject;
.end method
