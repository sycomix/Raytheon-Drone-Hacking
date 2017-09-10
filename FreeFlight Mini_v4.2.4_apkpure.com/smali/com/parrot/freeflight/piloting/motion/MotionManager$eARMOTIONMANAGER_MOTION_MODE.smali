.class public final enum Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;
.super Ljava/lang/Enum;
.source "MotionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/motion/MotionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eARMOTIONMANAGER_MOTION_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

.field public static final enum ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

.field public static final enum ARMOTIONMANAGER_MOTION_MODE_ENABLED_HORIZONTAL_REF:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

.field public static final enum ARMOTIONMANAGER_MOTION_MODE_ENABLED_REGULAR:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

.field public static final enum ARMOTIONMANAGER_MOTION_MODE_MAX:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    const-string v1, "ARMOTIONMANAGER_MOTION_MODE_DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    .line 52
    new-instance v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    const-string v1, "ARMOTIONMANAGER_MOTION_MODE_ENABLED_REGULAR"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_ENABLED_REGULAR:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    .line 58
    new-instance v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    const-string v1, "ARMOTIONMANAGER_MOTION_MODE_ENABLED_HORIZONTAL_REF"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_ENABLED_HORIZONTAL_REF:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    .line 62
    new-instance v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    const-string v1, "ARMOTIONMANAGER_MOTION_MODE_MAX"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_MAX:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    sget-object v1, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_ENABLED_REGULAR:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_ENABLED_HORIZONTAL_REF:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_MAX:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->$VALUES:[Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->$VALUES:[Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    return-object v0
.end method
