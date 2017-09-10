.class Lcom/parrot/freeflight/about/AboutActivity$4;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/about/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/about/AboutActivity;

.field final synthetic val$mcgyverSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/about/AboutActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/about/AboutActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parrot/freeflight/about/AboutActivity$4;->this$0:Lcom/parrot/freeflight/about/AboutActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/about/AboutActivity$4;->val$mcgyverSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "id"    # I

    .prologue
    .line 85
    iget-object v1, p0, Lcom/parrot/freeflight/about/AboutActivity$4;->val$mcgyverSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p2, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 89
    :pswitch_0
    const-string v1, "MacgyverShareDataKey"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/google/Analytic;->trackMenuAboutAnonymous()V

    .line 94
    const-string v1, "MacgyverShareDataKey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f008b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
