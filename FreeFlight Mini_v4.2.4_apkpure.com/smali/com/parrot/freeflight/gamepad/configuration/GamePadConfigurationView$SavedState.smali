.class Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "GamePadConfigurationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private opened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 450
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState$1;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 439
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;->opened:Z

    .line 441
    return-void

    .line 440
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$1;

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 435
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 436
    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;->opened:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;
    .param p1, "x1"    # Z

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;->opened:Z

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 445
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 446
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;->opened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    return-void

    .line 446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
