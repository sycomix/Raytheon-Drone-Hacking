.class final enum Lcom/parrot/freeflight/gamepad/command/AppCommand$5;
.super Lcom/parrot/freeflight/gamepad/command/AppCommand;
.source "AppCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/command/AppCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIZIZ)V
    .locals 10
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .param p5, "type"    # I
    .param p6, "repeatable"    # Z
    .param p7, "repeatingIntervalInMs"    # I
    .param p8, "shouldAccelerate"    # Z

    .prologue
    .line 43
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/command/AppCommand;-><init>(Ljava/lang/String;IIIIZIZLcom/parrot/freeflight/gamepad/command/AppCommand$1;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/view/inputmethod/BaseInputConnection;F)V
    .locals 3
    .param p1, "inputConnection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    .line 46
    const-string v0, "AppCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->access$100(Landroid/view/inputmethod/BaseInputConnection;I)V

    .line 48
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    check-cast p1, Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/AppCommand$5;->execute(Landroid/view/inputmethod/BaseInputConnection;F)V

    return-void
.end method
