.class final enum Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
.super Ljava/lang/Enum;
.source "DelosCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CameraStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

.field public static final enum PREVIEW:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

.field public static final enum RECORDING:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

.field public static final enum RELEASE:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RELEASE:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    .line 60
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->PREVIEW:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    .line 61
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RECORDING:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RELEASE:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->PREVIEW:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RECORDING:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->$VALUES:[Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->$VALUES:[Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    return-object v0
.end method
