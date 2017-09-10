.class final enum Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;
.super Ljava/lang/Enum;
.source "ARRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/openGL/ARRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GLRENDERER_ATTRIBUTE_ENUM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

.field public static final enum GLRENDERER_ATTRIBUTE_TEXCOORD:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

.field public static final enum GLRENDERER_ATTRIBUTE_VERTEX:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 505
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    const-string v1, "GLRENDERER_ATTRIBUTE_VERTEX"

    invoke-direct {v0, v1, v2, v2}, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->GLRENDERER_ATTRIBUTE_VERTEX:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    .line 506
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    const-string v1, "GLRENDERER_ATTRIBUTE_TEXCOORD"

    invoke-direct {v0, v1, v3, v3}, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->GLRENDERER_ATTRIBUTE_TEXCOORD:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    .line 503
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->GLRENDERER_ATTRIBUTE_VERTEX:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->GLRENDERER_ATTRIBUTE_TEXCOORD:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    aput-object v1, v0, v3

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->$VALUES:[Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

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
    .line 511
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 512
    iput p3, p0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->value:I

    .line 513
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 503
    const-class v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->$VALUES:[Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->value:I

    return v0
.end method
