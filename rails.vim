Plugin 'tpope/vim-rails'

let g:rails_projections = {
\ "app/jobs/*_job.rb": {
\   "command": "job",
\   "template": "class {camelcase|capitalize|colons}Job\nend",
\   "test": [
\     "spec/jobs/{}_job_spec.rb"
\   ]
\ },
\ "app/services/*.rb": {
\   "command": "service",
\   "template": "class {camelcase|capitalize|colons}\nend",
\   "test": [
\     "spec/services/{}_spec.rb"
\   ]
\ },
\ "app/policies/*_policy.rb": {
\   "command": "policy",
\   "template": "class {camelcase|capitalize|colons}Policy\n  class Scope\n  end\nend",
\   "test": [
\     "spec/policies/{}_policy_spec.rb"
\   ]
\ },
\ "app/decorators/*_decorator.rb": {
\   "command": "decorator",
\   "template": "class {camelcase|capitalize|colons}Decorator < Draper::Decorator\nend",
\   "test": [
\     "spec/decorators/{}_decorator_spec.rb"
\   ]
\ },
\ "app/serializers/*_serializer.rb": {
\   "command": "serializer",
\   "template": "class {camelcase|capitalize|colons}Serializer < ActiveModel::Serializer\nend",
\   "test": [
\     "spec/serializers/{}_serializer_spec.rb"
\   ]
\ },
\
\ "config/routes.rb": {"command": "routes"},
\ "spec/features/*_spec.rb": {"command": "feature"},
\ "spec/requests/*_spec.rb": {"command": "feature"},
\ "spec/support/*.rb": {"command": "support"},
\ "spec/factories.rb": {"command": "factories"},
\ "spec/factories/*.rb": {"command": "factories"}
\ }
