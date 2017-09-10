.class Lcom/parrot/freeflight/about/LegalMentionsActivity$2;
.super Ljava/lang/Object;
.source "LegalMentionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/about/LegalMentionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/about/LegalMentionsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/about/LegalMentionsActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity$2;->this$0:Lcom/parrot/freeflight/about/LegalMentionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v2, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity$2;->this$0:Lcom/parrot/freeflight/about/LegalMentionsActivity;

    const-string v3, "legal_mentions_shared_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "legal_mentions_accepted"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    iget-object v2, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity$2;->this$0:Lcom/parrot/freeflight/about/LegalMentionsActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/about/LegalMentionsActivityStarter;->startNextActivity(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V

    .line 75
    iget-object v2, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity$2;->this$0:Lcom/parrot/freeflight/about/LegalMentionsActivity;

    invoke-virtual {v2}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->finish()V

    .line 76
    return-void
.end method
