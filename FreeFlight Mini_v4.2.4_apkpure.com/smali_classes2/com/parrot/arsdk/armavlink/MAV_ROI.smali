.class public final enum Lcom/parrot/arsdk/armavlink/MAV_ROI;
.super Ljava/lang/Enum;
.source "MAV_ROI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/armavlink/MAV_ROI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/armavlink/MAV_ROI;

.field public static final enum MAV_ROI_ENUM_END:Lcom/parrot/arsdk/armavlink/MAV_ROI;

.field public static final enum MAV_ROI_LOCATION:Lcom/parrot/arsdk/armavlink/MAV_ROI;

.field public static final enum MAV_ROI_NONE:Lcom/parrot/arsdk/armavlink/MAV_ROI;

.field public static final enum MAV_ROI_TARGET:Lcom/parrot/arsdk/armavlink/MAV_ROI;

.field public static final enum MAV_ROI_WPINDEX:Lcom/parrot/arsdk/armavlink/MAV_ROI;

.field public static final enum MAV_ROI_WPNEXT:Lcom/parrot/arsdk/armavlink/MAV_ROI;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;

    const-string v1, "MAV_ROI_NONE"

    invoke-direct {v0, v1, v3}, Lcom/parrot/arsdk/armavlink/MAV_ROI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_NONE:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    .line 42
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;

    const-string v1, "MAV_ROI_WPNEXT"

    invoke-direct {v0, v1, v4}, Lcom/parrot/arsdk/armavlink/MAV_ROI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_WPNEXT:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    .line 44
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;

    const-string v1, "MAV_ROI_WPINDEX"

    invoke-direct {v0, v1, v5}, Lcom/parrot/arsdk/armavlink/MAV_ROI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_WPINDEX:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    .line 46
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;

    const-string v1, "MAV_ROI_LOCATION"

    invoke-direct {v0, v1, v6}, Lcom/parrot/arsdk/armavlink/MAV_ROI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_LOCATION:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    .line 48
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;

    const-string v1, "MAV_ROI_TARGET"

    invoke-direct {v0, v1, v7}, Lcom/parrot/arsdk/armavlink/MAV_ROI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_TARGET:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    .line 50
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;

    const-string v1, "MAV_ROI_ENUM_END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/armavlink/MAV_ROI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_ENUM_END:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/parrot/arsdk/armavlink/MAV_ROI;

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_NONE:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_WPNEXT:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_WPINDEX:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_LOCATION:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_TARGET:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_ENUM_END:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;->$VALUES:[Lcom/parrot/arsdk/armavlink/MAV_ROI;

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

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/armavlink/MAV_ROI;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/armavlink/MAV_ROI;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;->$VALUES:[Lcom/parrot/arsdk/armavlink/MAV_ROI;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/armavlink/MAV_ROI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/armavlink/MAV_ROI;

    return-object v0
.end method
