.class public final enum Lcom/csr/uenergy/ota/model/State$ScanState;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/uenergy/ota/model/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/csr/uenergy/ota/model/State$ScanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/csr/uenergy/ota/model/State$ScanState;

.field public static final enum STATE_SCAN_CANCEL:Lcom/csr/uenergy/ota/model/State$ScanState;

.field public static final enum STATE_SCAN_IDLE:Lcom/csr/uenergy/ota/model/State$ScanState;

.field public static final enum STATE_SCAN_SCANNING:Lcom/csr/uenergy/ota/model/State$ScanState;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ScanState;

    const-string v1, "STATE_SCAN_IDLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/csr/uenergy/ota/model/State$ScanState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ScanState;->STATE_SCAN_IDLE:Lcom/csr/uenergy/ota/model/State$ScanState;

    .line 103
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ScanState;

    const-string v1, "STATE_SCAN_SCANNING"

    invoke-direct {v0, v1, v3, v3}, Lcom/csr/uenergy/ota/model/State$ScanState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ScanState;->STATE_SCAN_SCANNING:Lcom/csr/uenergy/ota/model/State$ScanState;

    .line 107
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ScanState;

    const-string v1, "STATE_SCAN_CANCEL"

    invoke-direct {v0, v1, v4, v4}, Lcom/csr/uenergy/ota/model/State$ScanState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ScanState;->STATE_SCAN_CANCEL:Lcom/csr/uenergy/ota/model/State$ScanState;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/csr/uenergy/ota/model/State$ScanState;

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ScanState;->STATE_SCAN_IDLE:Lcom/csr/uenergy/ota/model/State$ScanState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ScanState;->STATE_SCAN_SCANNING:Lcom/csr/uenergy/ota/model/State$ScanState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ScanState;->STATE_SCAN_CANCEL:Lcom/csr/uenergy/ota/model/State$ScanState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ScanState;->$VALUES:[Lcom/csr/uenergy/ota/model/State$ScanState;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lcom/csr/uenergy/ota/model/State$ScanState;->index:I

    .line 119
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/csr/uenergy/ota/model/State$ScanState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v0, Lcom/csr/uenergy/ota/model/State$ScanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/csr/uenergy/ota/model/State$ScanState;

    return-object v0
.end method

.method public static values()[Lcom/csr/uenergy/ota/model/State$ScanState;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/csr/uenergy/ota/model/State$ScanState;->$VALUES:[Lcom/csr/uenergy/ota/model/State$ScanState;

    invoke-virtual {v0}, [Lcom/csr/uenergy/ota/model/State$ScanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/csr/uenergy/ota/model/State$ScanState;

    return-object v0
.end method


# virtual methods
.method public valueOf()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/csr/uenergy/ota/model/State$ScanState;->index:I

    return v0
.end method
