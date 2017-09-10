.class public final enum Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
.super Ljava/lang/Enum;
.source "MAV_VIEW_MODE_TYPE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

.field public static final enum VIEW_MODE_TYPE_ABSOLUTE:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

.field public static final enum VIEW_MODE_TYPE_CONTINUE:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

.field public static final enum VIEW_MODE_TYPE_ROI:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    const-string v1, "VIEW_MODE_TYPE_ABSOLUTE"

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_ABSOLUTE:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    .line 42
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    const-string v1, "VIEW_MODE_TYPE_CONTINUE"

    invoke-direct {v0, v1, v3}, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_CONTINUE:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    .line 44
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    const-string v1, "VIEW_MODE_TYPE_ROI"

    invoke-direct {v0, v1, v4}, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_ROI:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_ABSOLUTE:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_CONTINUE:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_ROI:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->$VALUES:[Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->$VALUES:[Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    return-object v0
.end method
