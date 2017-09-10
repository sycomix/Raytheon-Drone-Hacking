.class public final Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;
.super Ljava/lang/Object;
.source "TabletARNetworkConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static commandsBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static iobufferR2TArstreamData:I

.field private static iobufferR2TEvents:I

.field private static iobufferR2TNavdata:I

.field private static iobufferT2RAck:I

.field private static iobufferT2RArstreamAck:I

.field private static iobufferT2REmergency:I

.field private static iobufferT2RNack:I

.field protected static r2tParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation
.end field

.field protected static t2rParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation
.end field

.field private static videoMaxAckInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 14
    const-class v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->TAG:Ljava/lang/String;

    .line 16
    const/16 v0, 0xa

    sput v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RNack:I

    .line 17
    const/16 v0, 0xb

    sput v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RAck:I

    .line 18
    const/16 v0, 0xc

    sput v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2REmergency:I

    .line 19
    const/16 v0, 0xd

    sput v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RArstreamAck:I

    .line 20
    sget v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_WIFI_ID_MAX:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferR2TNavdata:I

    .line 21
    sget v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_WIFI_ID_MAX:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferR2TEvents:I

    .line 22
    sget v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_WIFI_ID_MAX:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x3

    sput v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferR2TArstreamData:I

    .line 24
    sget v0, Lcom/parrot/arsdk/arstream/ARStreamReader;->DEFAULT_MAX_ACK_INTERVAL:I

    sput v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->videoMaxAckInterval:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->r2tParams:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->commandsBuffers:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    sget-object v9, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RNack:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/4 v3, 0x0

    sget v4, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    sget v5, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    const/4 v6, 0x2

    const/16 v7, 0x80

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v9, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RAck:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA_WITH_ACK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/4 v3, 0x0

    const/16 v4, 0x96

    const/4 v5, 0x5

    const/16 v6, 0x14

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v9, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2REmergency:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA_WITH_ACK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/4 v3, 0x0

    const/16 v4, 0x96

    sget v5, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    const/4 v6, 0x1

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    sget v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RArstreamAck:I

    invoke-static {v1}, Lcom/parrot/arsdk/arstream/ARStreamReader;->newAckARNetworkIOBufferParam(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->r2tParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    sget-object v9, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->r2tParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferR2TNavdata:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/16 v3, 0x14

    sget v4, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    sget v5, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    const/16 v6, 0x14

    const/16 v7, 0x80

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v9, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->r2tParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferR2TEvents:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA_WITH_ACK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/4 v3, 0x0

    const/16 v4, 0x96

    const/4 v5, 0x5

    const/16 v6, 0x80

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->commandsBuffers:Ljava/util/List;

    sget v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RNack:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->commandsBuffers:Ljava/util/List;

    sget v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RAck:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->commandsBuffers:Ljava/util/List;

    sget v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2REmergency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addStreamReaderIOBuffer(II)V
    .locals 4
    .param p1, "maxFragmentSize"    # I
    .param p2, "maxNumberOfFragment"    # I

    .prologue
    .line 175
    sget-object v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 177
    .local v0, "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v2

    sget v3, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RArstreamAck:I

    if-ne v2, v3, :cond_0

    .line 179
    sget-object v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 185
    .end local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->r2tParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 187
    .restart local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v2

    sget v3, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferR2TArstreamData:I

    if-ne v2, v3, :cond_2

    .line 189
    sget-object v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->r2tParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    .end local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_3
    sget-object v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    sget v2, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RArstreamAck:I

    invoke-static {v2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->newAckARNetworkIOBufferParam(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->r2tParams:Ljava/util/List;

    sget v2, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferR2TArstreamData:I

    invoke-static {v2, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->newDataARNetworkIOBufferParam(III)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method public commonCommandsAckedIOBuffer()I
    .locals 1

    .prologue
    .line 159
    sget v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RAck:I

    return v0
.end method

.method public getCommandsIOBuffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->commandsBuffers:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultVideoMaxAckInterval()I
    .locals 1

    .prologue
    .line 164
    sget v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->videoMaxAckInterval:I

    return v0
.end method

.method public getR2TEventsId()I
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferR2TEvents:I

    return v0
.end method

.method public getR2TNavdataId()I
    .locals 1

    .prologue
    .line 126
    sget v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferR2TNavdata:I

    return v0
.end method

.method public getR2TParams()[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->r2tParams:Ljava/util/List;

    sget-object v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->r2tParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    return-object v0
.end method

.method public getR2TParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->r2tParams:Ljava/util/List;

    return-object v0
.end method

.method public getT2RAckId()I
    .locals 1

    .prologue
    .line 121
    sget v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RAck:I

    return v0
.end method

.method public getT2RNackId()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RNack:I

    return v0
.end method

.method public getT2RParams()[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    sget-object v1, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    return-object v0
.end method

.method public getT2RParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->t2rParams:Ljava/util/List;

    return-object v0
.end method

.method public getVideoAckIOBuffer()I
    .locals 1

    .prologue
    .line 149
    sget v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferT2RArstreamAck:I

    return v0
.end method

.method public getVideoDataIOBuffer()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/parrot/arsdk/arrouter/TabletARNetworkConfig;->iobufferR2TArstreamData:I

    return v0
.end method
