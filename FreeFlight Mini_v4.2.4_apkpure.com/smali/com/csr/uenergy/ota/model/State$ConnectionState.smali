.class public final enum Lcom/csr/uenergy/ota/model/State$ConnectionState;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/uenergy/ota/model/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/csr/uenergy/ota/model/State$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/csr/uenergy/ota/model/State$ConnectionState;

.field public static final enum STATE_CANCEL_CONNECTING:Lcom/csr/uenergy/ota/model/State$ConnectionState;

.field public static final enum STATE_CONNECTED:Lcom/csr/uenergy/ota/model/State$ConnectionState;

.field public static final enum STATE_CONNECTING:Lcom/csr/uenergy/ota/model/State$ConnectionState;

.field public static final enum STATE_DISCONNECTING:Lcom/csr/uenergy/ota/model/State$ConnectionState;

.field public static final enum STATE_IDLE:Lcom/csr/uenergy/ota/model/State$ConnectionState;

.field public static final enum STATE_INIT:Lcom/csr/uenergy/ota/model/State$ConnectionState;

.field public static final enum STATE_INVALID:Lcom/csr/uenergy/ota/model/State$ConnectionState;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;

    const-string v1, "STATE_INVALID"

    invoke-direct {v0, v1, v4, v4}, Lcom/csr/uenergy/ota/model/State$ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_INVALID:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    .line 44
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v5, v5}, Lcom/csr/uenergy/ota/model/State$ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_INIT:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    .line 48
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v6, v6}, Lcom/csr/uenergy/ota/model/State$ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_IDLE:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    .line 52
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;

    const-string v1, "STATE_CONNECTING"

    invoke-direct {v0, v1, v7, v7}, Lcom/csr/uenergy/ota/model/State$ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_CONNECTING:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    .line 56
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;

    const-string v1, "STATE_CONNECTED"

    invoke-direct {v0, v1, v8, v8}, Lcom/csr/uenergy/ota/model/State$ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_CONNECTED:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    .line 60
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;

    const-string v1, "STATE_DISCONNECTING"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_DISCONNECTING:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    .line 64
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;

    const-string v1, "STATE_CANCEL_CONNECTING"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$ConnectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_CANCEL_CONNECTING:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/csr/uenergy/ota/model/State$ConnectionState;

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_INVALID:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_INIT:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_IDLE:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_CONNECTING:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_CONNECTED:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_DISCONNECTING:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_CANCEL_CONNECTING:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;->$VALUES:[Lcom/csr/uenergy/ota/model/State$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/csr/uenergy/ota/model/State$ConnectionState;->index:I

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/csr/uenergy/ota/model/State$ConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/csr/uenergy/ota/model/State$ConnectionState;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/csr/uenergy/ota/model/State$ConnectionState;->$VALUES:[Lcom/csr/uenergy/ota/model/State$ConnectionState;

    invoke-virtual {v0}, [Lcom/csr/uenergy/ota/model/State$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/csr/uenergy/ota/model/State$ConnectionState;

    return-object v0
.end method


# virtual methods
.method public valueOf()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/csr/uenergy/ota/model/State$ConnectionState;->index:I

    return v0
.end method
