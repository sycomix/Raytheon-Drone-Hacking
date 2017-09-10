.class Lcom/parrot/freeflight/academy/ProfileEditPage6View$1;
.super Ljava/lang/Object;
.source "ProfileEditPage6View.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileEditPage6View;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileEditPage6View;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditPage6View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileEditPage6View;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage6View$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage6View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "id"    # I

    .prologue
    .line 37
    packed-switch p2, :pswitch_data_0

    .line 44
    :pswitch_0
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x7f0f0177
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
