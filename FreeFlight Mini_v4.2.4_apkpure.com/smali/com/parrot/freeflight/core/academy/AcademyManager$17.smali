.class Lcom/parrot/freeflight/core/academy/AcademyManager$17;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Lcom/parrot/arsdk/aracademy/ARAcademyAuthRegisteredSkyControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;->registerSkyController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

.field final synthetic val$newSerialsAlreadySent:Ljava/util/Set;

.field final synthetic val$serial:Ljava/lang/String;

.field final synthetic val$skyRegistrationPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Ljava/util/Set;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$17;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$17;->val$newSerialsAlreadySent:Ljava/util/Set;

    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$17;->val$serial:Ljava/lang/String;

    iput-object p4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$17;->val$skyRegistrationPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthRegisteredSkyControllerResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;)V
    .locals 3
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .param p2, "model"    # Lcom/parrot/arsdk/aracademy/ARAcademyRegisteredSkyController;

    .prologue
    .line 885
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne p1, v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$17;->val$newSerialsAlreadySent:Ljava/util/Set;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$17;->val$serial:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 887
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$17;->val$skyRegistrationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "serials_sent"

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$17;->val$newSerialsAlreadySent:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$17;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$2602(Lcom/parrot/freeflight/core/academy/AcademyManager;Z)Z

    .line 890
    return-void
.end method
