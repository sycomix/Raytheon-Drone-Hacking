.class public Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
.super Ljava/lang/Object;
.source "GamePadSensibility.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility$1;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->mValue:Ljava/lang/String;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;->toSaveString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->mValue:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->mValue:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void
.end method
