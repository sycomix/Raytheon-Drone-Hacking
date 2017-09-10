.class public final enum Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/uenergy/ota/model/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadCsBlockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

.field public static final enum READ_CS_BLOCK_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

.field public static final enum READ_CS_BLOCK_BUILD_ID:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

.field public static final enum READ_CS_BLOCK_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

.field public static final enum READ_CS_BLOCK_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

.field public static final enum READ_CS_BLOCK_XLST:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    const-string v1, "READ_CS_BLOCK_BUILD_ID"

    invoke-direct {v0, v1, v3, v3}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_BUILD_ID:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    .line 313
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    const-string v1, "READ_CS_BLOCK_BT_ADDRESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    .line 314
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    const-string v1, "READ_CS_BLOCK_XLST"

    invoke-direct {v0, v1, v5, v5}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_XLST:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    .line 315
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    const-string v1, "READ_CS_BLOCK_IDENTITY_ROOT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v6, v2}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    .line 316
    new-instance v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    const-string v1, "READ_CS_BLOCK_ENCRYPTION_ROOT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v7, v2}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    .line 311
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_BUILD_ID:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_XLST:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->$VALUES:[Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

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
    .line 325
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 326
    iput p3, p0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->index:I

    .line 327
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    const-class v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    return-object v0
.end method

.method public static values()[Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->$VALUES:[Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-virtual {v0}, [Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    return-object v0
.end method


# virtual methods
.method public getNext()Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->values()[Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->values()[Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public valueOf()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->index:I

    return v0
.end method
