.class public Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
.super Ljava/lang/Object;
.source "ARAcademyRunGradeVisible.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_RUNGRADEVISIBLE_GRADE:Ljava/lang/String; = "grade"

.field private static final ARACADEMY_RUNGRADEVISIBLE_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNGRADEVISIBLE_TAG:Ljava/lang/String; = "ARAcademyRunGradeVisible"

.field private static final ARACADEMY_RUNGRADEVISIBLE_VISIBLE:Ljava/lang/String; = "visible"


# instance fields
.field protected runGradeVisibleGrade:I

.field protected runGradeVisibleVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "grade"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "grade"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleGrade:I

    .line 54
    :cond_0
    const-string/jumbo v0, "visible"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const-string/jumbo v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleVisible:Z

    .line 59
    :cond_1
    return-void
.end method

.method private static checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;

    .prologue
    .line 181
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 186
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "grade"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->getGrade()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string/jumbo v2, "visible"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->getVisible()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-object v1

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;

    .prologue
    .line 151
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 156
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->getGrade()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->getGrade()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 158
    :cond_0
    const-string v2, "grade"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->getGrade()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->getVisible()Z

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->getVisible()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 163
    :cond_2
    const-string/jumbo v2, "visible"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->getVisible()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_3
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 102
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;

    move-object v2, v0

    .line 103
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleGrade:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleGrade:I

    .line 104
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleVisible:Z

    iput-boolean v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleVisible:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-object v2

    .line 106
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 116
    const/4 v0, 0x1

    .line 118
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;

    if-nez v2, :cond_2

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 140
    :cond_1
    :goto_0
    return v0

    .line 122
    :cond_2
    if-ne p1, p0, :cond_3

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 129
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;

    .line 130
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->getGrade()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleGrade:I

    if-eq v2, v3, :cond_4

    .line 132
    const/4 v0, 0x0

    .line 134
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->getVisible()Z

    move-result v2

    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleVisible:Z

    if-eq v2, v3, :cond_1

    .line 136
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGrade()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleGrade:I

    return v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleVisible:Z

    return v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Grade: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleGrade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setGrade(I)V
    .locals 0
    .param p1, "Grade"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleGrade:I

    .line 69
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "Visible"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->runGradeVisibleVisible:Z

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyRunGradeVisible{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->membersToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
