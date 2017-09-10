.class Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$2;
.super Ljava/lang/Object;
.source "GamePadConfigurationViewAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->sortInputList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;)I
    .locals 2
    .param p1, "lhs"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .param p2, "rhs"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .prologue
    .line 163
    iget-object v0, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    iget-object v1, p2, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 160
    check-cast p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    check-cast p2, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$2;->compare(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;)I

    move-result v0

    return v0
.end method
