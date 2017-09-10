.class final enum Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;
.super Ljava/lang/Enum;
.source "ARRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/openGL/ARRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TEXCOORDS_INDEX_ENUM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

.field public static final enum TEXCOORDS_INDEX_X0:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

.field public static final enum TEXCOORDS_INDEX_X1:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

.field public static final enum TEXCOORDS_INDEX_X2:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

.field public static final enum TEXCOORDS_INDEX_X3:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

.field public static final enum TEXCOORDS_INDEX_Y0:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

.field public static final enum TEXCOORDS_INDEX_Y1:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

.field public static final enum TEXCOORDS_INDEX_Y2:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

.field public static final enum TEXCOORDS_INDEX_Y3:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 534
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    const-string v1, "TEXCOORDS_INDEX_X0"

    invoke-direct {v0, v1, v4, v4}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X0:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    .line 535
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    const-string v1, "TEXCOORDS_INDEX_Y0"

    invoke-direct {v0, v1, v5, v5}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y0:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    .line 536
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    const-string v1, "TEXCOORDS_INDEX_X1"

    invoke-direct {v0, v1, v6, v6}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X1:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    .line 537
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    const-string v1, "TEXCOORDS_INDEX_Y1"

    invoke-direct {v0, v1, v7, v7}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y1:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    .line 538
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    const-string v1, "TEXCOORDS_INDEX_X2"

    invoke-direct {v0, v1, v8, v8}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X2:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    .line 539
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    const-string v1, "TEXCOORDS_INDEX_Y2"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y2:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    .line 540
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    const-string v1, "TEXCOORDS_INDEX_X3"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X3:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    .line 541
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    const-string v1, "TEXCOORDS_INDEX_Y3"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y3:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    .line 525
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X0:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y0:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X1:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y1:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X2:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y2:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X3:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y3:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->$VALUES:[Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 546
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 547
    iput p3, p0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->value:I

    .line 548
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 525
    const-class v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;
    .locals 1

    .prologue
    .line 525
    sget-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->$VALUES:[Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->value:I

    return v0
.end method
