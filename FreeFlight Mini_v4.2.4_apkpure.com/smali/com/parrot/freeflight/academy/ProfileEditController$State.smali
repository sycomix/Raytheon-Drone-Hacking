.class public final enum Lcom/parrot/freeflight/academy/ProfileEditController$State;
.super Ljava/lang/Enum;
.source "ProfileEditController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileEditController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/academy/ProfileEditController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/academy/ProfileEditController$State;

.field public static final enum STATE_CANCELING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

.field public static final enum STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

.field public static final enum STATE_DELETING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

.field public static final enum STATE_SAVING:Lcom/parrot/freeflight/academy/ProfileEditController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;

    const-string v1, "STATE_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/academy/ProfileEditController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    .line 53
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;

    const-string v1, "STATE_SAVING"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/academy/ProfileEditController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_SAVING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    .line 54
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;

    const-string v1, "STATE_CANCELING"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/academy/ProfileEditController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_CANCELING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    .line 55
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;

    const-string v1, "STATE_DELETING"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/academy/ProfileEditController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DELETING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/freeflight/academy/ProfileEditController$State;

    sget-object v1, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_SAVING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_CANCELING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DELETING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->$VALUES:[Lcom/parrot/freeflight/academy/ProfileEditController$State;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/academy/ProfileEditController$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/academy/ProfileEditController$State;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->$VALUES:[Lcom/parrot/freeflight/academy/ProfileEditController$State;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/academy/ProfileEditController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/academy/ProfileEditController$State;

    return-object v0
.end method
