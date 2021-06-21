###Install Packages###
library(lme4)

# CHM ---------------------------------------------------------------------


load('dat_chm.Rdata')
str(dat_chm)
dat_chm$body_mass <- scale(dat_chm$body_mass)

mod_chm <- glmer(prop ~ cyc + sex + body_mass + (1|ID), na.action = na.omit, weights = sum_day, family=binomial (logit), data = dat_chm)
summary(mod_chm)

plot(resid(mod_chm))


# GC ----------------------------------------------------------------------
load('dat_gc.Rdata')
str(dat_gc)

mod_gc <- glmer(prop ~ cyc + sex + body_mass + (1|ID), na.action = na.omit,weights = sum_day, family=binomial, data = dat_gc)
summary(mod_gc)

plot(resid(mod_gc))





