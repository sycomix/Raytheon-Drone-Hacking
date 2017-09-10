.class public final enum Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;
.super Ljava/lang/Enum;
.source "ARRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/openGL/ARRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCALE_MODE_ENUM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

.field public static final enum SCALE_MODE_ASPECT_FILL:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

.field public static final enum SCALE_MODE_ASPECT_FIT:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

.field public static final enum SCALE_MODE_CENTER:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

.field public static final enum SCALE_MODE_FILL:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 563
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    const-string v1, "SCALE_MODE_ASPECT_FIT"

    invoke-direct {v0, v1, v2}, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->SCALE_MODE_ASPECT_FIT:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    .line 564
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    const-string v1, "SCALE_MODE_ASPECT_FILL"

    invoke-direct {v0, v1, v3}, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->SCALE_MODE_ASPECT_FILL:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    .line 565
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    const-string v1, "SCALE_MODE_FILL"

    invoke-direct {v0, v1, v4}, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->SCALE_MODE_FILL:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    .line 566
    new-instance v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    const-string v1, "SCALE_MODE_CENTER"

    invoke-direct {v0, v1, v5}, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->SCALE_MODE_CENTER:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    .line 561
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->SCALE_MODE_ASPECT_FIT:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->SCALE_MODE_ASPECT_FILL:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->SCALE_MODE_FILL:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->SCALE_MODE_CENTER:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->$VALUES:[Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 561
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 561
    const-class v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->$VALUES:[Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    return-object v0
.end method
