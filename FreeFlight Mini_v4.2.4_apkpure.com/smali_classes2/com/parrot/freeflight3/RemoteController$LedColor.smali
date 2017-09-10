.class public final enum Lcom/parrot/freeflight3/RemoteController$LedColor;
.super Ljava/lang/Enum;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LedColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight3/RemoteController$LedColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight3/RemoteController$LedColor;

.field public static final enum GREEN:Lcom/parrot/freeflight3/RemoteController$LedColor;

.field public static final enum RED:Lcom/parrot/freeflight3/RemoteController$LedColor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/parrot/freeflight3/RemoteController$LedColor;

    const-string v1, "RED"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight3/RemoteController$LedColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/RemoteController$LedColor;->RED:Lcom/parrot/freeflight3/RemoteController$LedColor;

    .line 76
    new-instance v0, Lcom/parrot/freeflight3/RemoteController$LedColor;

    const-string v1, "GREEN"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight3/RemoteController$LedColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/RemoteController$LedColor;->GREEN:Lcom/parrot/freeflight3/RemoteController$LedColor;

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parrot/freeflight3/RemoteController$LedColor;

    sget-object v1, Lcom/parrot/freeflight3/RemoteController$LedColor;->RED:Lcom/parrot/freeflight3/RemoteController$LedColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight3/RemoteController$LedColor;->GREEN:Lcom/parrot/freeflight3/RemoteController$LedColor;

    aput-object v1, v0, v3

    sput-object v0, Lcom/parrot/freeflight3/RemoteController$LedColor;->$VALUES:[Lcom/parrot/freeflight3/RemoteController$LedColor;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight3/RemoteController$LedColor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lcom/parrot/freeflight3/RemoteController$LedColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight3/RemoteController$LedColor;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight3/RemoteController$LedColor;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/parrot/freeflight3/RemoteController$LedColor;->$VALUES:[Lcom/parrot/freeflight3/RemoteController$LedColor;

    invoke-virtual {v0}, [Lcom/parrot/freeflight3/RemoteController$LedColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight3/RemoteController$LedColor;

    return-object v0
.end method
