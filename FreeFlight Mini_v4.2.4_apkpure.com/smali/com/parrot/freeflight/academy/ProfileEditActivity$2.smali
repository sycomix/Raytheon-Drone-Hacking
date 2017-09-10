.class Lcom/parrot/freeflight/academy/ProfileEditActivity$2;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$2;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    sget-object v0, Lcom/parrot/freeflight/academy/ProfileEditActivity$5;->$SwitchMap$com$parrot$freeflight$academy$ProfileEditController$State:[I

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$2;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$000(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/ProfileEditController$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$2;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$100(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->access$200(Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;)V

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$2;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$300(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->save()V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$2;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$300(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->cancelSaving()V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
